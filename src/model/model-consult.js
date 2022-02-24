const localsModels = {}

localsModels.getDataUser = async (user, table) => {
    const pool = require("../config/database");
    var data = await pool.query(
        "SELECT * FROM "+table+" WHERE user_id =?",
        [user]
    );
    
    return data[0];
}

localsModels.getData = (data) => {
 
}

module.exports = localsModels;
