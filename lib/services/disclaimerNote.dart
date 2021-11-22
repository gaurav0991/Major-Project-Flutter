import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class DisclaimerNote extends StatelessWidget {
  final _showDisclaimerNote;

  DisclaimerNote(this._showDisclaimerNote);
  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
        builder: (context, screenHeight, screenWidth, sy, sx) {
      return _showDisclaimerNote
          ? Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                        child: Text(
                          'KIIT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: sy(18),
                          ),
                          textAlign: TextAlign.center,
                        )),
                    Image.network(
                      "https://cdn.kiit.ac.in/main/2017/12/18173204/KIIT-Logo-New1.png",
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("MADE BY : "),
                    ListTile(
                      title: Text("Gauarv Saraf"),
                      subtitle: Text("ROLL NO : 1806115"),
                    ),
                    ListTile(
                      title: Text("Shristi Singh"),
                      subtitle: Text("ROLL NO : 1806246"),
                    ),
                    ListTile(
                      title: Text("Soham Dey"),
                      subtitle: Text("ROLL NO : 1806252"),
                    )
                  ]),
            )
          : Container();
    });
  }
}
