library appstatemodel;

import 'package:polymer/polymer.dart';

class AppstateModel extends ObservableMap 
{
  @published String viewState = 'welcome';
  @published bool isLoggedIn = false;
  
  AppstateModel()
  {
    
  }
  
  void updateViewState(String to)
  {
    viewState = to;
  }
}

final AppstateModel appstateModel = new AppstateModel();