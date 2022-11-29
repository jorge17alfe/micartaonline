const CONFIG = require('./config/config')
const express = require("express");
const morgan = require("morgan");
const { create } = require("express-handlebars");
const path = require("path");
const flash = require("connect-flash");
const session = require("express-session");
const mySqlStore = require('express-mysql-session')
const passport = require('passport')





const { database } = require('./config/keys');
const router = require("./routes/routes.public");

// // Initializations
const app = express();
require('./lib/passport');


// // // Settings
app.set("port", process.env.PORT || CONFIG.PORT);
app.set("views", path.join(__dirname, "public/views"));


// // // settings handlebars
const hbrs = create({
  defaultLayout: "index",
  layoutsDir: path.join(app.get("views"), "layouts"),
  partialsDir: path.join(app.get("views"), "partials"),
  extname: ".hbs",
  helpers: require("./lib/handlebars"),
})

app.engine(".hbs", hbrs.engine);
app.set("view engine", ".hbs");

// // // Middlewares
app.use(session({
  secret: "jorgeluisom1+",
  resave: false,
  saveUninitialized: false,
  store: new mySqlStore(database)
}));
app.use(flash());
app.use(morgan("dev"));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(passport.initialize());
app.use(passport.session())



// // // Global Variables
// app.use(require("./config/global-variables"))
app.use((req, res, next) => {
  app.locals.config = CONFIG;

  // // get Lenguaje navegador
  var idioma = req.acceptsLanguages('en','es')
  const lenguage = require("./lang/" + idioma)
  app.locals.lenguage = lenguage;

  app.locals.name_url = req.url.substring(1, req.url.length, -1);
  app.locals.success = req.flash("success");
  app.locals.messageError = req.flash("messageError");

  app.locals.user = req.user;
  next();
});

// // // Routes
app.use(require("./routes/routes.public"));
app.use(require("./routes/routes.authentication"));
app.use(require("./routes/routes.enterprice"));
app.use(require("./routes/routes.admin"));
// app.use("/links", require("./routes/links"));

// // // Public
app.use(express.static(path.join(__dirname, "public/assets")));

app.use((req, res, next) => {
  res.status(404).render("public/404")
})
// // Starting the server
app.listen(app.get("port"), () => {
  console.log("Listen in link:  http://localhost:" + app.get("port"));
});

module.exports = app;