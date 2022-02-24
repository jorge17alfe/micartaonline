module.exports ={

    chooseLenguage(req){
        var idioma = req.acceptsLanguages('es', 'en');
        return require("../lang/"+idioma);
    }
}