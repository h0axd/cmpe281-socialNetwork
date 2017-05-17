var express = require('express');
var passport = require('passport');
var router = express.Router();
var app = express();
var http = require('http');
var fs = require('fs');

var array = [ "awsID_1", "awsID_2"]
var count = 1;

function EC2_Instance(id, name, status, location) {
  this.id = id
  this.name = name
  this.active = status;
  this.location = location;
};

router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/login', function(req, res, next) {
  res.render('login.ejs', { message: req.flash('loginMessage') });
});

router.get('/signup', function(req, res) {
  res.render('signup.ejs', { message: req.flash('loginMessage') });
});

router.get('/profile', isLoggedIn, function(req, res) {
var instances = [];
getawsReponses(function(awsReponses) {
  console.log('hope' + awsReponses[0].cluster_id);

  for(var i = 0; i < awsReponses.length; i++) {
    console.log('hope' + awsReponses[i].cluster_id);
      var newPerson = new EC2_Instance(awsReponses[i].cluster_id, awsReponses[i].cluster_name,
       awsReponses[i].status, "West");
       instances.push(newPerson);
   }
  res.render('profile.ejs', { user: instances});
});
});

function getawsReponses(cb) {
    http.get({
      host: 'ec2-34-210-117-45.us-west-2.compute.amazonaws.com',
      port: 8080,
      path: '/instances',
      method: 'GET'
    }, function(res) {
        // explicitly treat incoming data as utf8 (avoids issues with multi-byte chars)
        res.setEncoding('utf8');

        // incrementally capture the incoming response body
        var body = '';
        res.on('data', function(d) {
            body += d;
        });

        // do whatever we want with the response once it's done
        res.on('end', function() {
          var obj = JSON.parse(body);
          cb(obj);

        });
    }).on('error', function(err) {
        // handle errors with the request itself
        console.error('Error with the request:', err.message);
        cb(err);
    });
}

router.get('/logout', function(req, res) {
  req.logout();
  res.redirect('/');
});

router.post('/signup', passport.authenticate('local-signup', {
  successRedirect: '/profile',
  failureRedirect: '/signup',
  failureFlash: true,
}));

router.post('/login', passport.authenticate('local-login', {
  successRedirect: '/profile',
  failureRedirect: '/login',
  failureFlash: true,
}));

router.post("/new",  function(req, res) {
 console.log("Instance started");
 http.get({
   host: 'ec2-34-210-117-45.us-west-2.compute.amazonaws.com',
   port: 8080,
   path: '/instance/create/clustertest',
   method: 'GET'
 }, function(res_http) {
     // explicitly treat incoming data as utf8 (avoids issues with multi-byte chars)
     res_http.setEncoding('utf8');
     console.log(res_http.url);
     // incrementally capture the incoming response body
     var body = '';
     res_http.on('data', function(d) {
         body += d;
         console.log('hope' + body);
     });

     // do whatever we want with the response once it's done
     res_http.on('end', function() {
       var instances = [];
       getawsReponses(function(awsReponses) {
         console.log('hope' + awsReponses[0].cluster_id);

         for(var i = 0; i < awsReponses.length; i++) {
           console.log('hope' + awsReponses[i].cluster_id);
             var newPerson = new EC2_Instance(awsReponses[i].cluster_id, awsReponses[i].cluster_name,
              awsReponses[i].status, "West");
              instances.push(newPerson);
          }
         res.render('profile.ejs', { user: instances});
       });

     });
 }).on('error', function(err) {
     // handle errors with the request itself
     console.error('Error with the request:', err.message);

 });
 //setTimeout(res.redirect("/profile", 3000));

});

router.post("/restart",  function(req, res) {
 console.log("Instance restarted");
 console.log(req.body.result);
 var temp = req.body.result;
 var id=temp.replace(/\s/g,'');
 console.log("id " + id);

 http.get({
   host: 'ec2-34-210-117-45.us-west-2.compute.amazonaws.com',
   port: 8080,
   path: '/instance/start/' + id,
   method: 'GET'
 }, function(res_http) {
     // explicitly treat incoming data as utf8 (avoids issues with multi-byte chars)
     res_http.setEncoding('utf8');
     console.log(res_http.url);
     // incrementally capture the incoming response body
     var body = '';
     res_http.on('data', function(d) {
         body += d;
         console.log('hope' + body);
     });

     // do whatever we want with the response once it's done
     res_http.on('end', function() {

       var instances = [];
       getawsReponses(function(awsReponses) {
         console.log('hope' + awsReponses[0].cluster_id);

         for(var i = 0; i < awsReponses.length; i++) {
           console.log('hope' + awsReponses[i].cluster_id);
             var newPerson = new EC2_Instance(awsReponses[i].cluster_id, awsReponses[i].cluster_name,
              awsReponses[i].status, "West");
              instances.push(newPerson);
          }
         res.render('profile.ejs', { user: instances});
       });
     });
 }).on('error', function(err) {
     // handle errors with the request itself
     console.error('Error with the request:', err.message);

 });

});

router.post("/stopped",  function(req, res) {
 console.log("Instance stopped");
 console.log(req.body.result);
 var temp = req.body.result;
 var id=temp.replace(/\s/g,'');

 console.log("id " + id);
 http.get({
   host: 'ec2-34-210-117-45.us-west-2.compute.amazonaws.com',
   port: 8080,
   path: '/instance/stop/' + id,
   method: 'GET'
 }, function(res_http) {
     // explicitly treat incoming data as utf8 (avoids issues with multi-byte chars)
     res_http.setEncoding('utf8');
     // incrementally capture the incoming response body
     var body = '';
     res_http.on('data', function(d) {
         body += d;
         console.log('hope' + body);
     });

     // do whatever we want with the response once it's done
     res_http.on('end', function() {

       var instances = [];
       getawsReponses(function(awsReponses) {
         console.log('hope' + awsReponses[0].cluster_id);

         for(var i = 0; i < awsReponses.length; i++) {
           console.log('hope' + awsReponses[i].cluster_id);
             var newPerson = new EC2_Instance(awsReponses[i].cluster_id, awsReponses[i].cluster_name,
              awsReponses[i].status, "West");
              instances.push(newPerson);
          }
         res.render('profile.ejs', { user: instances});
       });



     });
 }).on('error', function(err) {
     // handle errors with the request itself
     console.error('Error with the request:', err.message);



 });
});


module.exports = router;


function isLoggedIn(req, res, next) {
  if (req.isAuthenticated())
      return next();
  res.redirect('/');
}
