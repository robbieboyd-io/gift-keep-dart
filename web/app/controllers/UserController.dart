library usercontroller;

import 'package:firebase/firebase.dart';

import '../models/AppstateModel.dart';
import 'ApplicationController.dart';

class UserController
{
  UserController()
  {
    
  }
  
  void init()
  {
    
  }
  
  void doLogin()
  {
    appstateModel.isLoggedIn = true;
  }
  
  void doLogout()
  {
    appstateModel.isLoggedIn = false;
  }
}