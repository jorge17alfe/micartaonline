const passport = require("passport");
const LocalStrategy = require("passport-local").Strategy;

const pool = require("../config/database");
const helpers = require("../lib/helpers");

passport.use(
  "local.signin",
  new LocalStrategy(
    {
      usernameField: "username",
      passwordField: "password",
      passReqToCallback: true,
    },
    async (req, username, password, done) => {
      const rows = await pool.query("SELECT * FROM tb_user_pass WHERE username = ?", [username]);
      if (rows.length > 0) {
        const user = rows[0];
        // console.log(user)
        const validPass = await helpers.matchPassword(password, user.password);
        // console.log(validPass)
        if (validPass) {
          done(null, user, req.flash('success', "Welcome " + user.username));
        } else {
          done(null, false, req.flash('messageError', "Incorrect Password"));
        }
      } else {
        return done(null, false, req.flash('messageError', "The username does not exist"));
      }
    }
  )
);

passport.use(
  "local.signup",
  new LocalStrategy(
    {
      usernameField: "username",
      passwordField: "password",
      passReqToCallback: true,
    },
    async (req, username, password, done) => {
      const { email, confirm_password, confirm_email } = req.body;
     
      a = await helpers.confirmElements(password, confirm_password);
      b = await helpers.confirmElements(email, confirm_email);
      
      if (a && b === true) {
        password = await helpers.encryptPassword(password);
        const newUser = {
          username,
          password:password,
          email
        };
        const result = await pool.query("INSERT INTO tb_user_pass SET ?", [newUser]);
        newUser.id = result.insertId;
        // console.log(result)
        done(null, false, req.flash("success", "Correct register "+a+", "+b));
        return done(null, newUser);
        
      }
      
      b = b ? false : "email incorrect"
      a = a ? false : "password incorrect"
      done(null, false, req.flash("messageError", "Incorrect register, "+a+", "+b));
      return done(null, null);
    
    }
  )
);

passport.serializeUser((username, done) => {
  done(null, username.id);
});

passport.deserializeUser(async (id, done) => {
  const rows = await pool.query("SELECT * FROM tb_user_pass WHERE id =?", [id]);
  done(null, rows[0]);
});
