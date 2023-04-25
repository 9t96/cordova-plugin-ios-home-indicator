var HomeIndicator = {
    hideHomeIndicator: function(successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "HomeIndicator", "hideHomeIndicator", []);
    },
    showHomeIndicator: function(successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "HomeIndicator", "showHomeIndicator", []);
    }
};

module.exports = HomeIndicator;