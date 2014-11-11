library applicationcontroller;

import 'dart:js';
import 'dart:async';
import 'package:firebase/firebase.dart';

import 'package:polymer/polymer.dart';
import 'package:firebase/firebase.dart';

import '../models/AppstateModel.dart';
import 'RouteController.dart';
import 'FirebaseController.dart';
import 'UserController.dart';

class ApplicationController
{
  RouteController routeController;
  FirebaseController firebaseController;
  UserController userController;
  
  ApplicationController()
  {
    routeController = new RouteController();
    firebaseController = new FirebaseController();
    userController = new UserController();
    
    routeController.init();
    firebaseController.init();
    userController.init();
  }
  
  void initFirebase()
  {
    /*_firebase = new Firebase('https://wedding-gifts.firebaseio.com');
    _firebase.auth('hCicz4jjVBBaFrenJEJobugNd1FGO1DqEH3BCHKo').then((e) => _authComplete(e));*/
  }
  
  void _authComplete(ev)
  {
    print('_authComplete');
  }
}

final ApplicationController applicationController = new ApplicationController();

