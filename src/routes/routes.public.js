const express = require('express')
const router = express.Router();
const public = require("../controller/controler.public")

router.get("/", public.index);
router.get("/about-us", public.aboutUs);
router.get("/cookies-politic", public.cookiesPolitic);
router.get("/privacity-politic", public.privacityPolitic);
router.get("/legal-notice", public.legalNotice);

module.exports = router;