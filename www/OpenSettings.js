var exec = require('cordova/exec');
module.exports = {
    open: function(successFn, errorFn) {
        exec(successFn, errorFn, 'OpenSettings', 'open', []);
    }
};
