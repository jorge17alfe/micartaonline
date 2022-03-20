const {format} = require('timeago.js')

const helpers ={}

helpers.timeago=(timestamp)=>{
    return format(timestamp)
}

helpers.optionqr = (vf) => {
    // var result = [100,200,300,400];
  
    // for (i = 4; i < 24; i += 4) {
    //   var value = i * 25;
    //   result += `<option value="${value}">${value}</option>`
    // }
    // console.log(result)
    return vf;
  }
module.exports = helpers;