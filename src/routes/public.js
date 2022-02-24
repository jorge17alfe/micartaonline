const express = require('express')
const router = express.Router();
const lenguage = require("../lang/es")

router.get("/", (req, res) => {
  res.render('public/index', {lenguage});
});

router.get("/about-us", (req, res) => {
  res.render('public/aboutus', {lenguage})
});

router.get("/cookies-politic", (req, res) => {
  res.render('legal/cookies-politic',{lenguage})
});
router.get("/privacity-politic", (req, res) => {
  res.render('legal/privacity-politic',{lenguage})
});
router.get("/legal-notice", (req, res) => {
  res.render('legal/legal-notice',{lenguage})
});


module.exports = router;