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
    return 
       Container(
          height:MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left:Radius.circular(40),right: Radius.circular(40)),
              color: Color(0xffFFDCDC)
              ),
        child: Column(
          children: [
            Container(
              child:  Align(
                alignment: Alignment.center,
                child: TabBar(
                  indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 2.0,color: Color(0xffff9292)),
            insets: EdgeInsets.symmetric(horizontal:50.0)
          ),
                  indicatorColor: Colors.amber,
                  labelColor: Color(0xffff9292),
                  controller:_tabController ,
                  tabs: [
                  Tab(child: Text('Login',style:TextStyle(fontFamily: 'Poppins',fontSize:20,fontWeight: FontWeight.w600 ),),),
                  Tab(child: Text('Sign Up',style:TextStyle(fontFamily: 'Poppins',fontSize:20,fontWeight: FontWeight.w600 ),),)
                ]),
              ),
            ),
            Container(
               width: double.infinity,
               height: 300,
              child:  TabBarView(
                controller:_tabController ,
                children:[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email"),
                        Padding(
                          padding: const EdgeInsets.only(top:15,bottom:15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                              )
                            ),
                          ),
                        ),
                          Text("Password"),
                        Padding(
                          padding: const EdgeInsets.only(top:15,bottom:15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                              )
                            ),
                          ),
                        )
                      ],
                    )
                    ),
                  ),
                  Text("Password"),
                ] ),
            )
          ],
        ),
      );
    
  }
}