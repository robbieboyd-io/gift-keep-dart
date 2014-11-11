import 'dart:html';
import 'dart:async';
import 'package:polymer/polymer.dart';

import '../../controllers/ApplicationController.dart';
import '../../models/AppstateModel.dart';

@CustomTag('giftkeep-gifts')
class Gifts extends PolymerElement {
  
  AppstateModel model = appstateModel;
   
  Gifts.created() : super.created();
  
  void attached() {
     super.attached();
   }
   
   void detached() {
     super.detached();
     
   }
}

