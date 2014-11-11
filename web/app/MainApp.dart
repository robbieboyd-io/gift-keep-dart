import 'package:polymer/polymer.dart';
import 'controllers/ApplicationController.dart';
import 'models/AppstateModel.dart';

@CustomTag('giftkeep-main-app')
class MainApp extends PolymerElement {

  AppstateModel model = appstateModel;
  
  MainApp.created() : super.created() {
    
  }
  
  void attached() {
      super.attached();
    }
    
    void detached() {
      super.detached();
      
    }
}

