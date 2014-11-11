import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('giftkeep-giftmanagement')
class GiftManagement extends PolymerElement 
{ 
  @published List<Map> gifts;
  
  GiftManagement.created() : super.created();
  
  void attached() {
     super.attached();
     
     gifts = new List<Map>();
     for(int i = 0; i < 10; i++)
     {
       Map map = new Map();
       map['title'] = i.toString() + ' title';
       map['from'] = 'Something!';
       
       gifts.add(map);
     }
   }
   
   void detached() {
     super.detached();
     
   }
}