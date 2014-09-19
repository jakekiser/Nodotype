
/*
 * GET home page.
 */
exports.index = function(req, res) {
    var u = require('../src/User/Models/User');
    var user = new u.User('joe', 'joe@joe.com', 60);

  res.render('index', { title: user.getName() });
};