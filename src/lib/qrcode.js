const { AwesomeQR } = require("awesome-qr");
const fs = require("fs");
const path = require("path");


const generatorQR = async (nameUrlEnterprice,userId, namePhoto, qrnameLogo, size,frontcolor) => {
   
    const logo = fs.readFileSync(path.join(__dirname, "../public/assets/users/"+userId+"/img/" +namePhoto));
    const buffer = await new AwesomeQR({
        text: nameUrlEnterprice,
        size: size,
        margin: 15,
        colorDark: frontcolor,
        // colorLight: "pink",
        autoColor: false,
        // backgroundImage: logo,
        logoImage: logo,
        logoCornerRadius:25,
    }).draw();
    fs.writeFileSync(path.join(__dirname, "../public/assets/users/"+userId+"/qr/" +qrnameLogo), buffer);
}





const getQR = (a,b,s,d,e,F)=>{
    var result = generatorQR(a,b,s,d,e,F)
    return result

}

module.exports= generatorQR



