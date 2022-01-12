import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: HomePage()),
  );
}

class HomePage extends StatelessWidget {
  final euroListe = [
     'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec',
     'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec',
     'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec',
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("MyAppMakeFluttertest")),
      body: CustomCheckBox(
        ),
       floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white ,)
      ),
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({ Key? key }) : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  var isCheck;
  dynamic msg;
   @override
  void initState() {
    super.initState();
    isCheck = false;
    msg = "Non Active";
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Checkbox(value: isCheck, onChanged: (bool? value) {
           setState(() {
            isCheck = value;
            if (isCheck) {
                msg = "Active ";
            }else{
               msg = "Non Active";
            }
             
           });
         }),
         Text(msg, style: TextStyle(fontSize: 35),)
      ],
    );
  }
}
