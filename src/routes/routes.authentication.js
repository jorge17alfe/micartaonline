const express = require("express");
const router = express.Router();
const authentication = require("../controller/controller.authetication")

const { isLoggedIn, isNotloggedIn } = require("../lib/auth");

router.get("/signup", isNotloggedIn, authentication.signUp);
router.post("/signup", isNotloggedIn, authentication.signUpPost);
router.get("/signin", isNotloggedIn, authentication.signIn);
router.post("/signin", isNotloggedIn, authentication.signInPost);
router.get("/logout", isLoggedIn, authentication.logOut);

module.exports = router;