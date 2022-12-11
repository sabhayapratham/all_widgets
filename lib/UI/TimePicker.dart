import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Time_Picker extends StatefulWidget {
  const Time_Picker({Key? key}) : super(key: key);

  @override
  State<Time_Picker> createState() => _Time_PickerState();
}

class _Time_PickerState extends State<Time_Picker> {
  TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: const Text('Time Picker demo'),
    ),
         body: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Center(
             child: TextFormField(
                  controller: timeController,
                  readOnly: true,
                  onTap: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                      initialTime: TimeOfDay.now(),
                      context: context,
                      //context of current state
                    );

                    if (pickedTime != null) {
                      print(pickedTime.format(context)); //output 10:51 PM
                      DateTime parsedTime =
                      DateFormat.jm().parse(pickedTime.format(context).toString());
                      //converting to DateTime so that we can further format on different pattern.
                      print(parsedTime); //output 1970-01-01 22:53:00.000
                      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                      print(formattedTime);
                      timeController.text = formattedTime;//output 14:59:00
                      //DateFormat() is from intl package, you can format the time on any pattern you need.
                    } else {
                      print("Time is not selected");
                    }
                  }),
           ),
         ),
    )
    );
  }
}
