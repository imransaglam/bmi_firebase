import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTabBarWidget extends StatefulWidget {
  const CustomTabBarWidget({super.key});

  @override
  State<CustomTabBarWidget> createState() => _CustomTabBarWidgetState();
}

class _CustomTabBarWidgetState extends State<CustomTabBarWidget> with TickerProviderStateMixin{
  
  @override
  Widget build(BuildContext context) {
   
   TabController _tabController=TabController(length: 2,vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container(
            child:  TabBar(
              controller:_tabController ,
              tabs: [
              Tab(text: 'Login',),
              Tab(text: 'Sign Up',)
            ]),
          ),
          Container(
            child:  TabBarView(
              controller:_tabController ,
              children:[
                Text("dag"),
                Text("dafghsfhg"),
              ] ),
          )
        ],
      ),
    );
  }
}