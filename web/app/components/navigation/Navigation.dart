import 'dart:html';
import 'dart:async';
import 'package:polymer/polymer.dart';

import '../../controllers/ApplicationController.dart';
import '../../models/AppstateModel.dart';

@CustomTag('giftkeep-navigation')
class Navigation extends PolymerElement {
  
  AppstateModel model = appstateModel;
   
  Navigation.created() : super.created();
  
  void attached() {
     super.attached();
   }
   
   void detached() {
     super.detached();
     
   }
   
   void toggleCollapsed(MouseEvent ev)
   {
     ButtonElement button = ev.currentTarget as ButtonElement;
     DivElement navbar = shadowRoot.querySelector('#bs-example-navbar-collapse-1');
     
     if(navbar.classes.contains('in'))
     {
       navbar.classes.remove('in');
     } else {
       navbar.classes.add('in');
     }
   }
}

