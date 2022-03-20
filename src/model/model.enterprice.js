const localsModels = {}

localsModels.getDataUser = async (user, table) => {
    try {
        const result = await require("./model.consult");
        return result.getDataUser(user, table) ;
        
    } catch (error) {
        console.log(error)
    }
}

localsModels.getData = (data) => {
 
}

module.exports = localsModels;
