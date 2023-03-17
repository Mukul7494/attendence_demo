import 'package:attendence_system/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text("Home page ha Bhai dekh lo"),
      ),
      endDrawer: SafeArea(
            child: Drawer(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_back),
                    title: Text("Back"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Icon(Icons.apartment),
                          title: Text("Book to Stay"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.airplanemode_active),
                          title: Text("Book a Flight"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.map),
                          title: Text("Book an Activity"),
                          onTap: () {},
                        ),
                        Divider(color: Colors.black),
                        ListTile(
                          title: Text("My profile"),
                          textColor: Colors.grey,
                        ),
                        ListTile(
                          leading: Icon(Icons.home),
                          title: Text("Home"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.luggage),
                          title: Text("My Trip"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.thumb_up),
                          title: Text("Vote"),
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                  width: 125,
                                  height: 30,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Activate NFT',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                  width: 125,
                                  height: 30,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Explore NFT',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 16, 23, 103),
                                    borderRadius: BorderRadius.circular(5),
                                  )),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Login"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.person_add_alt_1_outlined,
                            color: Colors.blue,
                          ),
                          title: Text("Sign Up Now",
                              style: TextStyle(color: Colors.blue)),
                          onTap: () {},
                        ),
                        Divider(color: Colors.black),
                        ListTile(
                          title: Text("Settings"),
                          textColor: Colors.grey,
                        ),
                        ListTile(
                          leading: Icon(Icons.abc_outlined),
                          title: Text("Languages"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.price_check),
                          title: Text("Popular Currencies"),
                          onTap: () {},
                        ),
                        Divider(color: Colors.black),
                        ListTile(
                          leading: Icon(Icons.chat),
                          title: Text("About Us"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.post_add),
                          title: Text("Invite Program"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.lightbulb_outline),
                          title: Text("Smart Program"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.check_circle_outline),
                          title: Text("Best Price Gurantee"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.shield_moon_outlined),
                          title: Text("TravelSmart Protection"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.card_giftcard),
                          title: Text("Travel gift Cards"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.card_membership_outlined),
                          title: Text("Payment Options"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.shield_outlined),
                          title: Text("Privacy Policy"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.cookie_outlined),
                          title: Text("Cookie policy"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.call),
                          title: Text("Contact"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.pageview_outlined),
                          title: Text(" Terms And Conditions"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.question_mark_rounded),
                          title: Text("Help"),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
