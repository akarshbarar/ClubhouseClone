import 'package:clubhoseclone/UTILS/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(CupertinoIcons.search),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(CupertinoIcons.envelope_open),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(CupertinoIcons.calendar),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(CupertinoIcons.bell),
              onPressed: () {},
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/profile');
              },
              child: CircleAvatar(
                child: FlutterLogo(),
                radius: 30.0,
              ),
            )
          ],
        ),
        body: Stack(alignment: Alignment.center, children: <Widget>[
          ListView.builder(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: AppColor.secondryColor,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, top: 5.0, bottom: 4.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              "News News News",
                              style: TextStyle(fontSize: 15),
                            ),
                            Icon(
                              Icons.home,
                              color: AppColor.green,
                            ),
                          ],
                        ),
                        Text("3 Minute News",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        Row(children: [
                          CircleAvatar(
                            child: FlutterLogo(),
                          ),
                          Column(
                            children: [
                              Text("Speaker 1"),
                              Text("Speaker 2"),
                              Text("Speaker 3"),
                              Row(
                                children: [
                                  Text("91"),
                                  Icon(Icons.person, color: Colors.grey),
                                  Text("/"),
                                  Text("35"),
                                  Icon(Icons.chat, color: Colors.grey)
                                ],
                              )
                            ],
                          )
                        ])
                      ]),
                ),
              );
            },
          ),
          Positioned(
              bottom: 50.0,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(25)),
                child: Text.rich(TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                    CupertinoIcons.add,
                    size: 20,
                    color: Colors.white,
                  )),
                  TextSpan(
                      text: ' Start a room',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ))
                ])),
              )),
          Positioned(
              bottom: 60.0,
              right: 50.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.circle_grid_3x3_fill)),
                  Positioned(
                      right: 4.0,
                      bottom: 11.0,
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).accentColor,
                        ),
                      )),
                ],
              )),
        ])

        // Center(
        //   child: Container(
        //     height: 200.0,
        //     width: 200.0,
        //     child: Text("Hello World"),
        //     decoration: BoxDecoration(
        //         color: Theme.of(context).accentColor,
        //         borderRadius: BorderRadius.circular(25.0)),
        //   ),
        // ),
        );
  }
}
