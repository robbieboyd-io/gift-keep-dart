import 'dart:html';
import 'package:polymer/polymer.dart';
import '../../models/AppstateModel.dart';

@CustomTag('giftkeep-account-dashboard')
class AccountDashboard extends PolymerElement 
{ 
  AppstateModel model = appstateModel;
  
  AccountDashboard.created() : super.created();
}

