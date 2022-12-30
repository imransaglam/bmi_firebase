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
            child:  Align(
              alignment: Alignment.center,
              child: TabBar(
                indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 5.0),
          insets: EdgeInsets.symmetric(horizontal:40.0)
        ),
                indicatorColor: Colors.amber,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.pink,
                controller:_tabController ,
                tabs: [
                Tab(text: 'Login',),
                Tab(text: 'Sign Up',)
              ]),
            ),
          ),
          Container(
             width: double.infinity,
             height: 300,
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