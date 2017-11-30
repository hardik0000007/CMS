(function () {
    var module = angular.module("myHome");
    module.service("HomeControllerService", function ($http) {
        var self = this;
        self.getfullData = function () {
            var promises1 = $http.get("http://localhost:8080/staffmember");
            var promises2 = promises1.then(function (response) {
                return response.data;
            });
           
            console.log("Data--->" + JSON.stringify(promises2));
            return promises2;
        }

        /*self.getCommentData = function (personId) {

            let commentUrl = "https://jsonplaceholder.typicode.com/posts/" + personId + "/comments";
            var promises1 = $http.get(commentUrl);
            var promises2 = promises1.then(function (response) {
                return response.data;
            });
            return promises2;
        }*/

    });
})();
