import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import "package:flutter_demo_1/pages/home/index.dart";
import "package:flutter_demo_1/pages/login/index.dart";
import "package:flutter_demo_1/pages/empty/index.dart";

// root页面
var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomeInitComponent();
});

//首页
var hometHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomeInitComponent();
});

//登录页面
var loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  final args = context?.settings?.arguments;
  return LoginCompont(args);
});

//空页面 404页面
var emptyComponent = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const EmptyComponent();
});
