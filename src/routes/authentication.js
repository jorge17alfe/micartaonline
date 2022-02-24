const express = require("express");
const router = express.Router();

const lenguage = require("../lang/es")



const passport = require("passport");
const { isLoggedIn, isNotloggedIn } = require("../lib/auth");

router.get("/signup", isNotloggedIn, (req, res) => {
  res.render("auth/signup",{lenguage});
});

router.post("/signup", isNotloggedIn,
  passport.authenticate("local.signup", {
    successRedirect: "/signin",
    failureRedirect: "/signup",
    failureFlash: true,
  })
);

router.get("/signin", isNotloggedIn, (req, res) => {
  res.render("auth/login",{lenguage});
});

router.post("/signin", isNotloggedIn, (req, res, next) => {
  passport.authenticate("local.signin", {
    successRedirect: "/profile",
    failureRedirect: "/signin",
    failureFlash: true,
  })(req, res, next);
});

router.get("/profile", isLoggedIn, async (req, res,next) => {
  const pool2 = require("../controller/data-enterprice");
  var result = await pool2.getDataUser(req.user.username)
  console.log("esto es mi lenguaje", req.chooseLenguage)
  res.render("user/profile", { result, lenguage});

});

router.post("/profile", isLoggedIn, async (req, res) => {
  // const id_usuario = req.body.id_user;
  // const id = req.body.id;
  // delete req.body.id;
  // delete req.body.id_usuario;
  // delete req.body.date;

  // await pool.query("UPDATE tb_personal_data_user SET ? WHERE user_id =?", [
  //   req.body,
  //   req.user.user,
  // ]);
  // req.flash("success", "Link updated successfully");
  console.log(req.body)
  res.redirect("/profile");
});

router.get("/logout", isLoggedIn, (req, res) => {
  req.logOut();
  res.redirect("signin");
});









module.exports = router;
