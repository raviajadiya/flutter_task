import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> _locations = [ "Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chhattisgarh", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Jammu and Kashmir", "Jharkhand", "Karnataka", "Kerala", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Odisha", "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Telangana", "Tripura", "Uttarakhand", "Uttar Pradesh", "West Bengal", "Andaman and Nicobar Islands", "Chandigarh", "Dadra and Nagar Haveli", "Daman and Diu", "Delhi", "Lakshadweep", "Puducherry"];
  String _selectedLocation;
  String statefirst;
  DateTime _selectedDate;
  TextEditingController _textEditingController = TextEditingController();
  DateTime _curentdate = DateTime.now();
  Future<Null>_datechange(BuildContext context)async{
    final DateTime __datechange = await showDatePicker(context: context,
        initialDate: _curentdate,
        firstDate: DateTime(1970),
        lastDate: _curentdate);
    if(__datechange != null){
      setState(() {
        _curentdate = __datechange;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    String _formatedate = DateFormat.yMMMd().format(_curentdate);
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                style: TextStyle(fontSize: 25),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  labelText: "Name"
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10),
                child: TextField(
                  maxLines: 2,
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: "Address"
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 10),
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: DropdownButton(
                    icon: Icon(Icons.arrow_drop_down),
                  hint: Text('State',style: TextStyle(fontSize: 25),), // Not necessary for Option 1
                  value: _selectedLocation,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue;
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      child: new Text(location,style: TextStyle(
                        fontSize: 25
                      ),),
                      value: location,
                    );
                  }).toList(),
                ) ,
              ),
              // child: DropdownButton(
              //   icon: Icon(Icons.arrow_drop_down),
              //   hint: Text("Selcet State"),
              //     onChanged: (value) {
              //   setState(() {
              //     statefirst = value;
              //   });
              // }, items: statename.map((value) {
              //   return DropdownMenuItem(
              //       value: value,
              //       child: Text(value));
              // }).toList()
              // ),
              ),

              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Expanded(
                    //child: TextField(
                      // focusNode: AlwaysDisabledFocusNode(),
                      // controller: _textEditingController,
                      // onTap: () {
                      //   _selectDate(context);
                      // },
                    //),
                      child: Text("Date:$_formatedate",style: TextStyle(fontSize: 20),)

                  ),
                  Expanded(child: IconButton(icon: Icon(Icons.date_range,size: 50,color: Colors.blueAccent,), onPressed: () {
                    _datechange(context);
                  },))
                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
