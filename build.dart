import 'package:polymer/builder.dart';
        
main(args) {
  print('INIT');
  
  build(entryPoints: ['web/giftkeep.html'],
        options: parseOptions(args));
}
