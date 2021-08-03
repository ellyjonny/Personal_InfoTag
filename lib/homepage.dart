import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('../assets/persona.jpg'),
            ),
          ),
          Column(
            children: [
              Text('Elias John'),
              Row(
                children: [
                  Spacer(),
                  Container(
                    height: 22,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Followers: ',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        Text('12.4K',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.verified,
                          size: 12,
                          color: Colors.lightBlue,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 22,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Following: ',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        Text('2000',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 22,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Post: ',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        Text('560',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.post_add,
                          size: 12,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }
}

//  Spacer(),
//                     Text('Following: '),
//                     Text('2000'),
//                     Spacer(),
//                     Text('Post: '),
//                     Text('569')
