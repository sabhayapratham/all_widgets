import 'package:all_widgets/UI/Bottombar.dart';
import 'package:all_widgets/UI/DatePicker.dart';
import 'package:all_widgets/UI/Drawer.dart';
import 'package:all_widgets/UI/Dropdownmenu.dart';
import 'package:all_widgets/UI/FlutterToast.dart';
import 'package:all_widgets/UI/MediaQuery.dart';
import 'package:all_widgets/UI/PageNavigation.dart';
import 'package:all_widgets/UI/SharedPreference.dart';
import 'package:all_widgets/UI/Snackbar.dart';
import 'package:all_widgets/UI/Tabbar.dart';
import 'package:all_widgets/UI/TextFormField.dart';
import 'package:all_widgets/UI/TimePicker.dart';
import 'package:all_widgets/UI/circleAvatar.dart';
import 'package:all_widgets/UI/circularProgressIndicator.dart';
import 'package:all_widgets/UI/get_stroage.dart';
import 'package:all_widgets/UI/gridView.dart';
import 'package:all_widgets/UI/listview.builder.dart';
import 'package:all_widgets/UI/scrollView.dart';
import 'package:all_widgets/UI/sqfliteScreen.dart';

class AppString {
  static List<Map<String, dynamic>> list = [
    {
      "text": 'ScrollView',
      "onTap": const myApp()
    },
    {"text": 'CircularProgress Indicator', "onTap": const Loader()},
    {"text": 'circleAvatar', "onTap": const circle_Avatar()},
    {"text": 'TextFromField', "onTap": const textField()},
    {"text": 'SnackBar', "onTap": const snackBar()},
    {"text": 'DropDownMenu', "onTap": const Dropdown_menu()},
    {"text": 'DatePicker', "onTap": const Date_Picker()},
    {"text": 'TimePicker', "onTap": const Time_Picker()},
    {"text": 'ListViewBuilder', "onTap": const listView()},
    {"text": 'gridview', "onTap": const gridview()},
    {"text": 'TabBar', "onTap": const tabBar()},
    {"text": 'BottomBar', "onTap": const Bottombar()},
    {"text": 'Drawer', "onTap": const Drawer1()},
    {"text": 'PageNavigation', "onTap": const Page_Navigation()},
    {"text": 'Media Query', "onTap": const Media_Query()},
    {"text": 'Flutter_Toast', "onTap": const Flutter_Toast()},
    {"text": 'GetStorageDemo', "onTap": const GetStorageDemo()},
    {"text": 'SharedPreferenceDemo', "onTap": const SharedPreferenceDemo()},
    {"text": 'SQFlite', "onTap": sqfLiteScreen()},
  ];
}