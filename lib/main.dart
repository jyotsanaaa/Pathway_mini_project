import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pathway',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      home: MyHomePage(title: 'Pathway : A Local Route Finder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Current Location',
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                        borderSide: new BorderSide(),
                      )),
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.sentences,
                ),

                SizedBox(
                  height: 12,
                ), // Space of 12 px(logical) is created between "Current location" text filed and "Final Destination" button

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Final Destination',
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                        borderSide: new BorderSide(),
                      )),
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.sentences,
                ),

                SizedBox(
                  height: 12,
                ), // Space of 12 px is created between "Final destination" text filed and "enter" button

                MaterialButton(
                    child: new MaterialButton(
                  onPressed: () => {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  height: 35.0,
                  minWidth: 100.0,
                  elevation: 5.0,
                  color: Color(0x6FC9E7),
                  child: new Text('Enter',
                      style:
                          new TextStyle(fontSize: 16.0, color: Colors.white)),
                  splashColor: Colors.black,
                )),

                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 338.35),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Table(
                      //  columnWidths: {1: FractionColumnWidth(.2)},
                      border: TableBorder.all(color: Colors.black45),
                      children: [
                        TableRow(children: [
                          Text('Fare'),
                          Text('Stops'),
                          Text('Route'),
                        ]),
                        TableRow(children: [
                          Text('1.'),
                          Text('1.'),
                          Text('1.'),
                        ]),
                        TableRow(children: [
                          Text('2.'),
                          Text('2.'),
                          Text('2.'),
                        ]),
                        TableRow(children: [
                          Text('3.'),
                          Text('3.'),
                          Text('3.'),
                        ])
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _OutlineButton extends StatelessWidget {
  final String buttonText;
  final void Function() onTap;

  _OutlineButton(this.buttonText, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(
        color: Colors.indigo,
      ),
      textColor: Colors.indigo,
      onPressed: onTap,
      child: Text(buttonText),
    );
  }
}
