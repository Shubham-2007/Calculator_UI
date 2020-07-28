import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  final String title;
  const Calculator({this.title});
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  var listTile = ListTile(
    title: Text(
      "Number1",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        "Number2",
        style: TextStyle(color: Colors.grey, fontSize: 13.0),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(shrinkWrap: true, children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 60, 
                  child: Card(
                      elevation: 7.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      child: Center(
                        child: Container(
                          child: Text(
                            "Number1", 
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                        ),
                      ),
                    
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 60,
                  child: Card(
                      elevation: 7.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      child: Center(
                        child: Container(
                          child: Text(
                            "Number2", 
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                        ),
                      ),
                    
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  width: MediaQuery.of(context).size.width - 200.0,
                  height: 80,
                  child: Card(
                    elevation: 7.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculator(title: option1[index])));
                      },
                      child: Center(
                        child: Container(
                          child: Text(
                            "Calculate",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 70,
                  child: Card(
                      elevation: 7.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      child: Center(
                        child: Container(
                          child: Text(
                            "Answer",  
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                        ),
                      ),
                    
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
