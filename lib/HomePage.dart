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
              onTap: () {},
              child: CircleAvatar(
                child: FlutterLogo(),
                radius: 30.0,
              ),
            )
          ],
        ),
        body: Stack(alignment: Alignment.center, children: <Widget>[
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
              ))
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
