import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadantty/Cache_Helper.dart';
import 'package:hadantty/Screens/LoginScreen/LoginScreen.dart';
import 'package:hadantty/Screens/auth/Login/auth_controller.dart';


import '../../IncubationCubit/incubation_cubit.dart';
import '../../models/Incubation.dart';
import 'IncubationScreen.dart';

class PersonHomeScreen extends StatefulWidget {
  const PersonHomeScreen({Key key}) : super(key: key);
  @override
  State<PersonHomeScreen> createState() => _PersonHomeScreenState();
}

class _PersonHomeScreenState extends State<PersonHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<IncubationCubit, IncubationState>(
  listener: (context, state) {},
  builder: (context, state) {
    var cubit = BlocProvider.of<IncubationCubit>(context);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(1, -1),
                end: Alignment(-1, 1),
                colors: <Color>[Color(0xff00ffef), Color(0xff008f9a)],
                stops: <double>[0, 1],
              ),
            ),
          ),
          title: Text(
            "Home Page",
            textAlign: TextAlign.center,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("${CacheHelper.getData(key: 'DisplayName')}",style: TextStyle(color: Colors.black),),
                accountEmail: Text("${CacheHelper.getData(key: 'roleName')}",style: TextStyle(color: Colors.black),),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Icon(CupertinoIcons.person), // instead of image asset
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(""),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.mail_outline_rounded),
                title: Text("Contact Us"),
                onTap: () {
                  print("Contact US");
                },
              ),
              ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("Blogs"),
                onTap: () {
                  print("Blogs");
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  CacheHelper.removeData(key: 'token');
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (Context)=> LoginScreen()));
                  print("Logout");
                },
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xff008f9a),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.02,
                      horizontal: size.width * 0.025),
                  child: TextField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Color(0xffd9d9d9)),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 0.8),
                        ),
                        hintText: 'Find Incubation',
                        hintStyle: TextStyle(
                          color: Color(0xffd9d9d9),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xffd9d9d9),
                          size: 30,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.clear,
                            color: Color(0xffd9d9d9),
                          ),
                          onPressed: () {},
                        )),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: 900,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        offset: Offset(0, -10),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView.separated(
                        itemBuilder:(context, index) => BuildListIncubation(incubation: cubit.incubations[index]),
                        separatorBuilder:(context, index)=> SizedBox(
                          height: 20,
                        ),
                        itemCount:cubit.incubations.length ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  },
);
  }
}

class BuildListIncubation extends StatelessWidget {
  const BuildListIncubation({@required this.incubation,Key key}) : super(key: key);

  final Incubation incubation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => IncubationScreen(IncName: incubation.name)));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xffd9d9d9))),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border:
                Border.all(color: Color(0xffd9d9d9)),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/incubation2.png',
                ),
              ),),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${incubation.name}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      height: 1.5,
                      color: Color(0xff008f9a)),
                ),
                Text(
                  '',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '${incubation.city}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
