


import 'package:auto_route/auto_route.dart';
import 'package:solution_challenge_2023_recommender_app/homepage.dart';
import 'package:solution_challenge_2023_recommender_app/new.dart';

part 'app_router.gr.dart';            
              
@AutoRouterConfig(replaceInRouteName: "View,Route")      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [      
    //AutoRoute(page: MyHomeRouteeView.page, initial: true,path: "/"), 
    //AutoRoute(page: NewpageView.page,path: "/newpage"), 
   ];
 }   