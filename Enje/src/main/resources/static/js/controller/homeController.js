(function () {

    var module = angular.module("myHome", []);

    module.controller("myHome", myHome);

    function myHome(HomeControllerService) {
        this.title = "Staff Member";
        var self = this;
        this.showTable = false;
        
        /*$http.get("http://localhost:8080/staffmember")
            .then(function (response) { this.memberData = response; });*/

        //alert(JSON.stringify(self.memberData));
        /*console.log(JSON.stringify(this.memberData));*/

        /*this.selectPerson = function () {
            alert(this.personId);
            HomeControllerService.getCommentData(this.personId).
                then(function (data) {
                    self.emailData = data;
                });
        }*/

        this.showStaffDetails = function () {
        	HomeControllerService.getfullData().
            then(function (data) {
                self.memberData = data;
            });
            this.showTable = true;
        }
    }
})();