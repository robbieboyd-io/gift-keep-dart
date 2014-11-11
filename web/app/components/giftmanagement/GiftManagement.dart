import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('giftkeep-giftmanagement')
class GiftManagement extends PolymerElement 
{ 
  @published List<Map> gifts;
  @published bool addingNew = true;
  
  GiftManagement.created() : super.created();
  
  void attached() {
     super.attached();
     
     gifts = new List<Map>();
     for(int i = 0; i < 10; i++)
     {
       Map map = new Map();
       map['title'] = i.toString() + ' title';
       map['from'] = 'Something!';
       map['link'] = 'http://www.google.com/';
       map['id'] = i.toString();
       
       gifts.add(map);
     }
     
     print(gifts.length);
   }
   
   void detached() {
     super.detached();
     
   }
   
   void clickAddNew(MouseEvent ev)
   {
     
   }
   
   void clickAddThis(MouseEvent ev)
   {
     
   }
   
   void clickCancel(MouseEvent ev)
   {
     
   }
   
   void removeThisItem(MouseEvent ev)
   {
     
   }
}