import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTabBarWidget extends StatefulWidget {
  const CustomTabBarWidget({super.key});

  @override
  State<CustomTabBarWidget> createState() => _CustomTabBarWidgetState();
}

class _CustomTabBarWidgetState extends State<CustomTabBarWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Color(0xffFFDCDC)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: TabBar(
                    indicator: UnderlineTabIndicator(
                        borderSide:
                            BorderSide(width: 2.0, color: Color(0xffff9292)),
                        insets: EdgeInsets.symmetric(horizontal: 50.0)),
                    indicatorColor: Colors.amber,
                    labelColor: Color(0xffff9292),
                    unselectedLabelColor: Color(0xffff9292),
                    controller: _tabController,
                    tabs: [
                      Tab(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ]),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 550,
            child: TabBarView(controller: _tabController, children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Container(
                    // color: Colors.amber,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Color(0xffff9292),
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Color(0xffff9292)),
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                        )),
                      ),
                    ),
                    Text(
                      "Password",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Color(0xffff9292),
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color(0xffff9292)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)))),
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: SizedBox(
                        width: 250,
                        height: 60,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffff9292),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Text(
                              "Login",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      color: Color(0xffFFDCDC),
                                      fontFamily: 'Poppins',
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                            )),
                      ),
                    )),
                    Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Or sign up here",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      color: Color(0xffff9292),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                            ))),
                    Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Terms & Conditions Apply*",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      color: Color(0xffff9292),
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                            ))),
                  ],
                )
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Container(
                    // color: Colors.amber,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter email",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Color(0xffff9292),
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Color(0xffff9292)),
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                        )),
                      ),
                    ),
                    Text(
                      "Create password",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Color(0xffff9292),
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color(0xffff9292)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)))),
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: SizedBox(
                        width: 250,
                        height: 60,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffff9292),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Text(
                              "Sign Up",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      color: Color(0xffFFDCDC),
                                      fontFamily: 'Poppins',
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                            )),
                      ),
                    )),
                    Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Or login here",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      color: Color(0xffff9292),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                            ))),
                    Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Terms & Conditions Apply*",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      color: Color(0xffff9292),
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                            ))),
                  ],
                )
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
