const bcrypt = require("bcryptjs");
const helpers = {};

helpers.encryptPassword = async (password) => {
  const salt = await bcrypt.genSalt(10);
  const hash = await bcrypt.hash(password, salt);
  return hash;
};

helpers.matchPassword = async (password, savePassword) => {
  try {
    return await bcrypt.compare(password, savePassword)
  } catch (e) {
    console.log(e)
  }
}

helpers.confirmElements = async (element_a, element_b) => {
  try {
    if (element_a === element_b) return true
    return false
      
   
  } catch (e) {
    console.log(e)
  }
}


module.exports = helpers;
