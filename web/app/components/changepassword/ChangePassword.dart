import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('giftkeep-changepassword')
class ChangePassword extends PolymerElement {
   
  @published bool updatedSuccessfully = false;
  @published String passwordChangeErrorMessage = '';
  
  ChangePassword.created() : super.created();
  
  void clickChangePassword(MouseEvent ev)
  {
      ev.preventDefault();
    
      changePassword();
  }
  
  void changePassword()
  {
      //resetInputs();

      //$scope.newPassword = $('#newPass').val();
      //$scope.oldPassword = $('#oldPass').val();
      //$scope.emailAddress = $('#emailAddress').val();

     /* $rootScope.authClient.changePassword($scope.emailAddress, $scope.oldPassword, $scope.newPassword, function(error) {
          if (error === null) {
              console.log("Password changed successfully");

              $scope.passwordChangeErrorMessage = '';
              $scope.updatedSuccessfully = true;

              if(!$scope.$$phase) $scope.$apply();
          } else {
              console.log("Error changing password:", error);

              $scope.updatedSuccessfully = false;
              switch(error.code)
              {
                  case "INVALID_EMAIL" :
                      $scope.passwordChangeErrorMessage = "Invalid email address specified";
                      break;

                  case "INVALID_USER" :
                      $scope.passwordChangeErrorMessage = "That email address isn't registered";
                      break;

                  case "INVALID_PASSWORD" :
                      $scope.passwordChangeErrorMessage = "That password was incorrect";
                      break;
              }


              if(!$scope.$$phase) $scope.$apply();
          }
      });*/
  }
}

