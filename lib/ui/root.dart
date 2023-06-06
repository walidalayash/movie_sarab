import 'package:flutter/material.dart';
import 'package:movie/ui/profile.dart';

import 'home.dart';
import 'movie.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  final _views = [
  Home(),
  Movie(),
  //  Home(),
  // Home(),
  ];
   int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: 
       ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration:const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Center(
                        child: SizedBox(
                      width: 140,
                      height: 140,
                      child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Hulu_Logo.svg/2560px-Hulu_Logo.svg.png'),
                    )),
                  ),
                 ListTile(
                          title:
                              Text('favorite'),
                          onTap: ()  {
                          },
                        ),
                         ListTile(
                          title:
                              Text('settings'),
                          onTap: ()  {
                          },
                        ),
                         ListTile(
                          title:
                              Text('Login'),
                          onTap: ()  {
                          },
                        )
                   
                ],
              ),
      ),
      bottomNavigationBar: 
                        BottomNavigationBar(
                         
                          selectedItemColor:Colors.blue,
                           
                          unselectedItemColor:Colors.grey,
                          items:const <BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                              icon: Icon(
                                Icons.home,
                                size: 25,
                              ),
                              label: 'Home',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(
                                Icons.movie,
                                size: 25,
                              ),
                              label:
                                  'movies',
                            ),
                            // BottomNavigationBarItem(
                            //   icon: Icon(
                            //     Icons.recent_actors,
                            //     size: 25,
                            //   ),
                            //   label:
                            //       'Actors',
                            // ),
                            // BottomNavigationBarItem(
                            //   icon: Icon(
                            //     Icons.person,
                            //     size: 25,
                            //   ),
                            //   label: 'profile',
                            // ),
                          ],
                          currentIndex: _selectedIndex,
                          onTap: _onItemTapped,
                        ),
                    
                    
                
                
             
    
      body:_views.elementAt(_selectedIndex),
    );
  }
}