const express = require("express")
const CONFIG = require('./config')
const app = express();

app.use((req, res, next) => {
    app.locals.nameProject = CONFIG.NAMEPROJECT;
    app.locals.admin_b = CONFIG.ADMIN_B;
    app.locals.success = req.flash("success");
    app.locals.messageError = req.flash("messageError");
    // delete req.user.register_date;
    // delete req.user.connection_last;
    // delete req.user.password;
    // delete req.user.email;


    app.locals.user = req.username;
    // console.log(req.user)
    next();
});

module.exports = app;