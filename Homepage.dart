import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  bool _isNotificationPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Color(0xFF147351),
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          'images/img_11.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Go Green',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF147351),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isNotificationPressed = !_isNotificationPressed;
                          });
                        },
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            _isNotificationPressed ? Color(0xFF147351) : Colors.black,
                            BlendMode.srcIn,
                          ),
                          child: Image.asset(
                            'images/img_28.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      SizedBox(width: 24),
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.black,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          'images/img_29.png',
                          width: 38,
                          height: 38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF147351),
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 0 ? Color(0xFF147351) : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'images/img_24.png',
                width: 24,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 1 ? Color(0xFF147351) : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'images/img_25.png',
                width: 24,
              ),
            ),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF147351).withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  'images/img_23.png',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 3 ? Color(0xFF147351) : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'images/img_27.png',
                width: 24,
              ),
            ),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 4 ? Color(0xFF147351) : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'images/img_27.png',
                width: 24,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
