import 'package:fluro/fluro.dart';
import 'package:flutter_demo_1/router/route_handles.dart';

class Routes {
  static String rootPage = "/"; //需要注意
  static String homPage = "/home";
  static String loginPage = "/login";

  static void configureRoutes(FluroRouter router) {
    router.define(rootPage, handler: rootHandler);
    router.define(homPage, handler: hometHandler);
    router.define(loginPage, handler: loginHandler);
    router.notFoundHandler = emptyComponent; //空页面
  }
}
