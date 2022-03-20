module.exports ={

    chooseLenguage(req){
        // var idioma = req.acceptsLanguages('es', 'en');
        var idioma = "es"
        return require("../lang/"+idioma);
    }
}