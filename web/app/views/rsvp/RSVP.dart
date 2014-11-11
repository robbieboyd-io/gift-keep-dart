import 'dart:html';
import 'dart:async';
import 'package:polymer/polymer.dart';

import '../../controllers/ApplicationController.dart';
import '../../models/AppstateModel.dart';

@CustomTag('giftkeep-rsvp')
class RSVP extends PolymerElement {
  
  AppstateModel model = appstateModel;
  
  @published String RSVP_NOT_SET = "rsvp_not_set";
  @published String RSVP_ATTENNDING = "rsvp_attending";
  @published String RSVP_NOT_ATTENNDING = "rsvp_not_attending";
  
  @published String rsvpState;
  @published List beingBrought = new List();  
 
  RSVP.created() : super.created();
  
  void attached() {
     super.attached();
     
     rsvpState = RSVP_NOT_SET;
   }
   
   void detached() {
     super.detached();
     
   }
   
   void getIntro()
   {
     
   }
   
   void confirmComing()
   {
     /*
       $scope.fireRef.set({
           email : $rootScope.authUserObj.email,
           attending : true,
           answered : String(Date.now())
       });

       $scope.rsvpState = $scope.RSVP_ATTENNDING;*/
   }
   
   void confirmNotComing()
   {/*
       $scope.fireRef.set({
           email : $rootScope.authUserObj.email,
           attending : false,
           answered : String(Date.now())
       });

       $scope.rsvpState = $scope.RSVP_NOT_ATTENNDING;*/
   }
}

