import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('giftkeep-loginbox')
class LoginBox extends PolymerElement {
  
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
      if(password.classes.lookup('has-error') != null) password.classes.remove('has-error');
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

