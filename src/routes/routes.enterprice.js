const express = require("express");
const router = express.Router();
const enterprice = require("../controller/controller.enterprice");


const { isLoggedIn, isNotloggedIn } = require("../lib/auth");


router.get("/profile", isLoggedIn, enterprice.profile);
router.get("/edit-day-menu", isLoggedIn, enterprice.editDaymenu);
router.get("/edit-images", isLoggedIn, enterprice.editImages);
router.get("/edit-texts", isLoggedIn, enterprice.editTexts);

router.post("/getdatas", isLoggedIn, enterprice.getDatas);

router.post("/getqr", isLoggedIn, enterprice.getQr)
router.post("/deleteqr", isLoggedIn, enterprice.deleteQr)











module.exports = router;
