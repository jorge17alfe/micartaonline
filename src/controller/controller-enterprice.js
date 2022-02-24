const localsFunction = {}

localsFunction.getDataUser = async (user) => {
    const consult = require("../model/model-enterprice");
    const data = await consult.getDataUser(user, "tb_user_data_enterprice")
    const menu = await consult.getDataUser(user, "tb_menu_day")
    const dataReturned = { ...data, ...menu };
    //  console.log(dataReturned)
    const result = localsFunction.getDataDeserialize(dataReturned)
    // const result = {}
    return result;
}

localsFunction.getDataDeserialize = (data) => {
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

module.exports = localsFunction;
