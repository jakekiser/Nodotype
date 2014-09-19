var User = (function () {
    function User(name, email, id) {
        this.name = name;
        this.email = email;
        this.id = id;
    }
    User.prototype.getName = function () {
        return this.name;
    };

    User.prototype.getEmail = function () {
        return this.email;
    };

    User.prototype.getId = function () {
        return this.id;
    };
    return User;
})();
exports.User = User;
//# sourceMappingURL=User.js.map
