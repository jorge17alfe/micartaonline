module.exports ={

    isLoggedIn(req, res, next){
        if(req.isAuthenticated()){
            return next();
        }
        return res.redirect('/signin')
    },
    isNotloggedIn(req, res , next){
        if(!req.isAuthenticated()){
            return next();
        }
        return res.redirect('/profile')
        
    },
    isLoggedInAdmin(req, res , next){
        if(req.user.username == "jorge"){
            return next();
        }
        return res.redirect('/profile')
       
        
    }
}