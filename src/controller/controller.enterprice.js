const enterprice = {}
const consult = require("../model/model.enterprice");
const config = require("../config/config");
const { stringify } = require("querystring");

enterprice.profile = async (req, res) => {
    const result = await enterprice.getDataUser(req, res);
    res.render("user/profile", { result });
}
enterprice.getDatas = async (req,res)=>{
    const result = await enterprice.getDataUser(req, res);
    res.send(result)
}
enterprice.getDataUser = async (req, res) => {
    const data = await consult.getDataUser(req.user.username, "tb_user_data_enterprice")
    const menu = await consult.getDataUser(req.user.username, "tb_menu_day")
    const dataReturned = { ...data, ...menu };
    const result =getDataDeserialize(dataReturned)
    return result;
}
enterprice.getQr = async (req, res) => {
    const getQR = require('../lib/qrcode');
    const result = await enterprice.getDataUser(req, res)
    console.log(req.body)
    var size = parseInt(req.body.size)

    const sendobject = await getQR(config.SERVERURL+result.web_name,result.user_id,result.logo[0], "qr"+result.logo[0], size, req.body.frontcolor)
    res.send(result)
}

const getDataDeserialize = (data) => {
    try {
        const PHPUnserialize = require('php-unserialize');
        const phpserial = require('js-php-serialize');
        const listDeserialize = [
            "social_network",
            "choose_social_network",
            "sw_elements",
            "about_us",
            "logo",
            "front_page",
            "menu_images",
            "menu_text",
            "drinks_images",
            "drinks_text",
            "telephone",
            "schedule",
            "wifi",
            "first_plate",
            "second_plate",
            "dessert",
            "img_menu_images"
        ];
        for (ele of listDeserialize) {
            data[ele] = PHPUnserialize.unserialize(data[ele])
        }
        return data
    } catch (er) {
        console.log("there is error")
    }
}


module.exports = enterprice;
