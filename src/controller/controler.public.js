const public = {};

public.index = (req, res) => {
    res.render('public/index', {  });
};

public.aboutUs= (req, res) => {
    res.render('public/aboutus', {  })
};

public.cookiesPolitic= (req, res) => {
    res.render('legal/cookies-politic', {  })
};
public.privacityPolitic= (req, res) => {
    res.render('legal/privacity-politic', {  })
};
public.legalNotice= (req, res) => {
    res.render('legal/legal-notice', {  })
}; 

module.exports = public;