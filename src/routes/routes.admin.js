const express = require("express");
const router = express.Router();

const lenguage = require("../lang/es")

const { isLoggedIn, isNotloggedIn } = require("../lib/auth");

router.get("/admin", isLoggedIn, (req, res) => {
  res.render("admin/admin",{lenguage});
});

module.exports = router;