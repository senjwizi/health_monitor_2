import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_monitor_2/data/userData.dart';
import 'package:health_monitor_2/objects/inputDate.dart';
import 'package:health_monitor_2/objects/inputFiled.dart';
import 'package:health_monitor_2/themes.dart';

class UserProfile extends StatefulWidget {
  
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final UserData ud = UserData();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  bool canEdit = false;
  DateTime age = DateTime.now();

  void loadUserInfo() {
    print('load iser info');
    nameController.text = "Радмир";
  }

  void saveUserInfo() {
    setState(() {
      canEdit = false;
      FocusManager.instance.primaryFocus?.unfocus();
    });
  }

  void openCalendar() {
    print('open calendare');
    () async {
      final DateTime? dateTime = await showDatePicker(context: context, initialDate: age, firstDate: DateTime(1920), lastDate: DateTime(2120));
      if (dateTime != null) {
        setState(() {
          age = dateTime;
        });
      }
    };
  }

  @override
  void initState() {
    loadUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.08,
        centerTitle: true,
        actions: [
          !canEdit ? GestureDetector(
            onTap: () => setState(() =>
              canEdit = true),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(Icons.edit, color: colorBlack),
            )
          ) : const SizedBox(),
        ],
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(Icons.arrow_back_ios_new, color: colorBlack),
        ),
        title: Text(
          "Профиль",
          style: headerStyle,
          textAlign: TextAlign.start,
        ),
     ),
      body: Column(
        //separatorBuilder: (context) => SizedBox(height: 10,),
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: colorGrey,
                radius: 50,
              )
            ],
          ),
          const Spacer(flex: 1),
          InputField(controller: nameController, hintText: 'Имя пользователя', canEdit: canEdit, icon: const Icon(Icons.person)),
          InputField(controller: emailController, hintText: 'Эл. почта', canEdit: canEdit, icon: const Icon(Icons.mail)),
          //InputDate(controller: dateController, hintText: 'Дата рождения', canEdit: canEdit, icon: const Icon(Icons.calendar_month), onTap: openCalendar),
          Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: GestureDetector(
        onTap: () {
              print('open calendare');
    () async {
      final DateTime? dateTime = await showDatePicker(context: context, initialDate: age, firstDate: DateTime(1920), lastDate: DateTime(2120));
      if (dateTime != null) {
        setState(() {
          age = dateTime;
        });
      }
    };
        },
        child: Container(
          decoration: BoxDecoration(
            color: colorBright,
            borderRadius: BorderRadius.circular(15),
          ),
          height: 50,
          width: 340,
        )/*TextField(
          enabled: canEdit,
          controller: controller,
          style: subHeaderStyle,
          decoration: InputDecoration(
            filled: true,
            fillColor: colorBright.withOpacity(0.5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none
            ),
            hintText: hintText,
            prefixIcon: icon,
            prefixIconColor: colorBlack,
          )
        ),*/
      ),
    ),
          const Spacer(flex: 6,),
          canEdit ?
          GestureDetector(
            onTap: saveUserInfo,
            child: Container(
              margin: const EdgeInsets.all(30),
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colorContrast,
                borderRadius: BorderRadius.circular(15),

              ),
              child: Text("Сохранить", style: subHeaderStyle.copyWith(color: colorWhite),),
            ),
          ) : SizedBox(height: 110,)
        ]),
    );
  }
}