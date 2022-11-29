const express = require("express");
const router = express.Router();

const lenguage = require("../lang/es")

const { isLoggedInAdmin } = require("../lib/auth");

router.get("/admin", isLoggedInAdmin, (req, res) => {
  res.render("admin/admin",{lenguage});
});

module.exports = router;