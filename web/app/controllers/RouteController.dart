library routecontroller;

import 'package:route_hierarchical/client.dart';

import '../models/AppstateModel.dart';

class RouteController
{
  final String welcome = 'welcome';
  final String rsvp = 'rsvp';
  final String gifts = 'gifts';
  final String venue = 'venue';
  final String accountDetails = 'account-details';
  
  Router router;
  
  RouteController()
  {
    
  }
  
  String prependSlash(String path)
  {
    return '/'+path;
  }
  
  void showPage(RouteEvent ev)
  {
    print('showPage');
    appstateModel.viewState = ev.route.name;
    
    print(appstateModel.viewState);
  }
  
  void init()
  {
    router = new Router(useFragment: true);
    router.root
      ..addRoute(name: welcome, defaultRoute: true, path: prependSlash(welcome), enter: showPage)
      ..addRoute(name: rsvp, path: prependSlash(rsvp), enter: showPage)
      ..addRoute(name: gifts, path: prependSlash(gifts), enter: showPage)
      ..addRoute(name: venue, path: prependSlash(venue), enter: showPage)
      ..addRoute(name: accountDetails, path: prependSlash(accountDetails), enter: showPage);
    router.listen();
  }
}