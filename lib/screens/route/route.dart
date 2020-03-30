import 'package:flutter/material.dart';

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Pathway',
  //     theme: ThemeData(
  //       inputDecorationTheme: InputDecorationTheme(
  //         border: OutlineInputBorder(),
  //       ),
  //     ),
  //     home: MyRoute(title: 'Pathway : A Local Route Finder'),
  //   );
  // }

class MyRoute extends StatefulWidget {
  MyRoute({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyRoute createState() => _MyRoute();
}

class _MyRoute extends State<MyRoute>{
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context){
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

                ListView.builder(
                  itemBuilder: (context, position){
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(position.toString(), style: TextStyle(),),                      )
                    );
                  },
                ),
                

                ListView.separated(
                  itemBuilder: (context, position){
                    //return ListItem();
                    return null;
                  }, 
                  separatorBuilder: (context, position)
                  {
                    //return SeparatorItem();
                    return null;
                  }, 
                  itemCount: null,
                ),
              ],
            ),
          )
        )
      ),
    );
  }
}
