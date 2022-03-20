const authentication = {}



const passport = require("passport");

authentication.signUp = (req, res) => {
    res.render("auth/signup", {  });
}

authentication.signUpPost = passport.authenticate("local.signup", {
    successRedirect: "/signin",
    failureRedirect: "/signup",
    failureFlash: true,
})

authentication.signIn = (req, res) => {
    res.render("auth/login", {  });
}

authentication.signInPost = (req, res, next) => {
    passport.authenticate("local.signin", {
        successRedirect: "/profile",
        failureRedirect: "/signin",
        failureFlash: true,
    })(req, res, next);
}

authentication.logOut = (req, res) => {
    req.logOut();
    res.redirect("signin");
}


module.exports = authentication;