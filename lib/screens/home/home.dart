import 'package:flutter/material.dart';
import 'package:login_project/services/database.dart';


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

  final txtContoller1 = TextEditingController();
  final txtContoller2 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    txtContoller1.dispose();
    txtContoller2.dispose();
    super.dispose();
  }

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Current Location',
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                        borderSide: new BorderSide(),
                      )
                    ),
                    controller: txtContoller1,
                  ),

                SizedBox(height: 12,),  // Space of 12 px(logical) is created between "Current location" text filed and "Final Destination" button
        
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Final Destination',
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                        borderSide: new BorderSide(),
                    )
                  ),
                  controller: txtContoller2,
                ),

                SizedBox(height: 12,), // Space of 12 px is created between "Final destination" text filed and "enter" button

                MaterialButton(
                  onPressed: DatabaseService().updateUserData(txtContoller1.text, txtContoller2.text),
                  textColor: Colors.white,
                  height: 40.0,
                  minWidth: 50.0,
                  color: Theme.of(context).primaryColor,
                  child: new Text('Enter'),
                  splashColor: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

  // // Displaying the data part
  //               Container(
  //                 color: Colors.white,
  //                 padding: EdgeInsets.symmetric(vertical: 338.35),
  //                 child: Align(
  //                   alignment: Alignment.bottomCenter,
  //                   child: Table(
  //                     //  columnWidths: {1: FractionColumnWidth(.2)},
  //                     border: TableBorder.all(color: Colors.black45),
  //                     children: [
  //                       TableRow(children: [
  //                         Text('Fare'),
  //                         Text('Stops'),
  //                         Text('Route'),
  //                       ]),
  //                       TableRow(children: [
  //                         Text('1.'),
  //                         Text('1.'),
  //                         Text('1.'),
  //                       ]),
  //                       TableRow(children: [
  //                         Text('2.'),
  //                         Text('2.'),
  //                         Text('2.'),
  //                       ]),
  //                       TableRow(children: [
  //                         Text('3.'),
  //                         Text('3.'),
  //                         Text('3.'),
  //                       ])
  //                     ],
  //                   ),
  //                 ),
  //               ),


// class _OutlineButton extends StatelessWidget {
//   final String buttonText;
//   final void Function() onTap;

//   _OutlineButton(this.buttonText, {this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return OutlineButton(
//       borderSide: BorderSide(
//         color: Colors.indigo,
//       ),
//       textColor: Colors.indigo,
//       onPressed: onTap,
//       child: Text(buttonText),
//     );
//   }
// }