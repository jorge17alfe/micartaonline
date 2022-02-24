const CONFIG = require('./config/config')
const express = require("express");
const morgan = require("morgan");
const viewHbs = require("express-handlebars");
const path = require("path");
const flash = require("connect-flash");
const session = require("express-session");
const mySqlStore = require('express-mysql-session')
const passport = require('passport')




const { database } = require('./config/keys');
const router = require("./routes/public");

// // Initializations
const app = express();
require('./lib/passport');
// // // Settings
app.set("port", process.env.PORT || CONFIG.PORT);
app.set("views", path.join(__dirname, "public/views"));
app.engine(
  ".hbs",
  viewHbs({
    defaultLayout: "index",
    layoutsDir: path.join(app.get("views"), "layouts"),
    partialsDir: path.join(app.get("views"), "partials"),
    extname: ".hbs",
    helpers: require("./lib/handlebars"),
  })
);
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

// // GEt lenguage 
// app.set((req, res, next) => {
//   const { chooseLenguage } = require("./lib/lenguage");
//   chooseLenguage(req)
//   console.log(chooseLenguage(req))
//   next()
// })

// // // Global Variables
// app.use(require("./config/global-variables"))
app.use((req, res, next) => {
  console.log(req.url)
  app.locals.nameProject = CONFIG.NAMEPROJECT;
  app.locals.admin_b = CONFIG.ADMIN_B;
  app.locals.name_url = req.url;
  app.locals.success = req.flash("success");
  app.locals.messageError = req.flash("messageError");
  // delete req.user.register_date;
  // delete req.user.connection_last;
  // delete req.user.password;
  // delete req.user.email;


  app.locals.user = req.user;
  // console.log(req.user)
  next();
});

// // // Routes
app.use(require("./routes/public"));
app.use(require("./routes/authentication"));
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