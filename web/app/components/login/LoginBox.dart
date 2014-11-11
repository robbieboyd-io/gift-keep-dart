import 'dart:html';
import 'package:polymer/polymer.dart';

import '../../controllers/ApplicationController.dart';
import '../../models/AppstateModel.dart';

@CustomTag('giftkeep-loginbox')
class LoginBox extends PolymerElement {
  
  AppstateModel model = appstateModel;
  
  @published String FORGOT_PASSWORD = 'forgot_password';
  @published String LOGIN = 'login';
  @published String loginViewState;
  
  @published bool passwordResetSuccess = false;
  @published bool isLoggedIn = false;
  
  LoginBox.created() : super.created();
  
  void attached() {
    super.attached();
    loginViewState = LOGIN;
  }
  
  void detached() {
    super.detached();
    
  }
  
  void resetInputs()
  {
      DivElement email = shadowRoot.getElementById('emailGroup');
      DivElement password = shadowRoot.getElementById('passwordGroup');
      
      if(email.classes.lookup('has-error') != null) email.classes.remove('has-error');
      if(password != null && password.classes.lookup('has-error') != null) password.classes.remove('has-error');
  }
  
  void resetThePassword()
  {
      resetInputs();
      
      int validAmount = 0;
      
      InputElement emailInput = shadowRoot.getElementById('email');
      DivElement emailGroup = shadowRoot.getElementById('emailGroup');
      
      if(emailInput.value.length <= 0) {
        emailGroup.classes.add('has-error');
      } else {
        emailGroup.classes.remove('has-error');
        validAmount++;
      }
          
      if(validAmount == 1) {
        
        //applicationController.userController.doLogin();
        
      }

      //$scope.user = $('#email').val();
      /*
      $rootScope.authClient.sendPasswordResetEmail($scope.user, function(error) {
          if (error === null) {
              console.log("Password reset email sent successfully");
              $scope.passwordResetSuccess = true;

              if(!$scope.$$phase) $scope.$apply();
          } else {
              console.log("Error sending password reset email:", error);

              switch(error.code)
              {
                  case 'INVALID_EMAIL' :
                      $("#emailGroup").addClass('has-error');
                      break;
              }
          }
      });*/
  }
  
  void clickLogout(MouseEvent ev)
  {
      applicationController.userController.doLogout();
    
      /*console.log("Logout");
      $rootScope.authClient.logout();

      $rootScope.isLoggedIn = false;
      $scope.user = '';
      $scope.pass = '';

      $scope.loginViewState = $scope.LOGIN;
      $scope.passwordResetSuccess = false;

      if(!$rootScope.$$phase) $rootScope.$apply();
      if(!$scope.$$phase) $scope.$apply();*/
  }
  
  void clickLogin(MouseEvent ev)
  {
    ev.preventDefault();
    
    int validAmount = 0;
    
    InputElement emailInput = shadowRoot.getElementById('email');
    InputElement passwordInput = shadowRoot.getElementById('password');
    
    DivElement emailGroup = shadowRoot.getElementById('emailGroup');
    DivElement passwordGroup = shadowRoot.getElementById('passwordGroup');
    
    if(emailInput.value.length <= 0) {
      emailGroup.classes.add('has-error');
    } else {
      emailGroup.classes.remove('has-error');
      validAmount++;
    }
    
    if(passwordInput.value.length <= 0) {
      passwordGroup.classes.add('has-error');
    } else {
      passwordGroup.classes.remove('has-error');
      validAmount++;
    }
    
    if(validAmount == 2) {
      
      applicationController.userController.doLogin();
      
    }
  }
  
  void clickLoginStateSwitch(MouseEvent ev)
  {
    loginStateSwitch(ev.currentTarget.dataset['state']);
  }
  
  void loginStateSwitch(String state)
  {
    if(loginViewState == LOGIN) {
      resetInputs();
    }
    
    loginViewState = state;
  }
}

