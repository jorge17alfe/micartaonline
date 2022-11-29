const { AwesomeQR } = require("awesome-qr");
const fs = require("fs");
const path = require("path");


const generatorQR = async (nameUrlEnterprice, userId, namePhoto, qrnamePhoto, size, frontcolor, backcolor) => {
    // console.log(nameUrlEnterprice, userId, namePhoto, qrnameLogo, size, frontcolor)
    const logo = fs.readFileSync(path.join(__dirname, "../public/assets/users/" + userId + "/img/" + namePhoto));
    const buffer = await new AwesomeQR({
        text: nameUrlEnterprice,
        size: size,
        margin: 15,
        colorDark: frontcolor,
        // colorLight: backcolor,
        autoColor: false,
        backgroundDimming: backcolor,
        // backgroundImage: backcolor,
        logoImage: logo,
        logoCornerRadius: 25,
    }).draw();

    fs.writeFileSync(path.join(__dirname, "../public/assets/users/" + userId + "/qr/" + qrnamePhoto), buffer);

    return JSON.stringify({ nameUrlEnterprice, userId, namePhoto, qrnamePhoto, size, frontcolor, backcolor })
}

const deleteQR = async (userId, qrnamePhoto) => {


    // try {


        const cont = fs.readdir(path.join(__dirname, "../public/assets/users/" + userId + "/qr/"), function (err, photo) {
            photo.map((ele)=>{
                console.log(ele)
                // const deleteqr = fs.unlinkSync(path.join(__dirname, "../public/assets/users/" + userId + "/qr/" + ele))
            })
            return photo
        })


    // } catch (e) {
        // console.log(cont)
    // }


    return "Delete qr"
}





const getQR = (a, b, s, d, e, F) => {
    var result = generatorQR(a, b, s, d, e, F)
    return result

}

module.exports = { getQR, deleteQR }



