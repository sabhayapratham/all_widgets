import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date_Picker extends StatefulWidget {
  const Date_Picker({Key? key}) : super(key: key);

  @override
  State<Date_Picker> createState() => _Date_PickerState();
}

class _Date_PickerState extends State<Date_Picker> {

  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DatePicker'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            showCursor: false,
            keyboardType: TextInputType.none,
            controller: dateController,
            readOnly: true,

            onTap: () async{
              DateTime? pickedDate = await showDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                  context: context
              );
              if(pickedDate != null ){
                print(pickedDate);
                String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                print(formattedDate);
                dateController.text = formattedDate;
              }else{
                print("Date is not selected");
              }
            },
          ),
        ),
      ),
    );
  }
}
