const express = require("express");
const router = express.Router();
const enterprice = require("../controller/controller.enterprice");


const { isLoggedIn, isNotloggedIn } = require("../lib/auth");


router.get("/profile", isLoggedIn, enterprice.profile);




router.post("/getdatas", isLoggedIn, enterprice.getDatas);




router.post("/getqr", isLoggedIn, enterprice.getQr)











module.exports = router;
