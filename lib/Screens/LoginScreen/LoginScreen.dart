import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hadantty/Screens/Components/Components.dart';
import 'package:hadantty/Screens/LoginScreen/LoginCubit/login_cubit.dart';
import 'package:hadantty/Screens/PersonHome/PersonHomeScreen.dart';
import '../DecisionScreen/DecisionScreen.dart';
import '../ForgetPasswordScreen/ForgetPasswordScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return BlocProvider(
      create: (context) => LoginCubit(LoginInitialState()),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if(state is LoginSuccessState){
            if(state.login.statusCode == 200){
              print(state.login.message);
              print(state.login.token);
            }else
              {
                print(state.login.statusCode);
              }
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Logo2.png",
                          width: size.width * 0.4,
                          height: size.height * 0.3,
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Column(
                          children: [
                            Container(
                                margin:
                                    EdgeInsets.symmetric(vertical: 5),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular(45),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0, 2),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: defaultFormText(
                                  control: usernameController,
                                  type: TextInputType.emailAddress,
                                  validate: (String value) {
                                    if (value.isEmpty) {
                                      return "Please Enter Your Email Address";
                                    }
                                  },
                                  hintText: "Email Address",
                                )),
                            Container(
                              margin:
                                  EdgeInsets.symmetric(vertical: 10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(45),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0, 2),
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                              child: defaultFormText(
                                  control: passwordController,
                                  type: TextInputType.visiblePassword,
                                  validate: (value) {
                                   if(value.isEmpty){
                                     return "Please Enter Your Email Address";
                                   }
                                  },
                                  hintText: "Password",
                                isPassword: LoginCubit.get(context).isPassword,
                                  suffix: LoginCubit.get(context).suffix ,
                                suffixClicked: (){
                                    LoginCubit.get(context).changePasswordVisibility();
                                }
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: size.width * 0.5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (Context) {
                                return ForgetPasswordScreen();
                              }));
                            },
                            child: Text(
                              'Forget password ?',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                color: Color(0xffa3a3a3),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        ConditionalBuilder(
                          condition: state is! LoginLoadingState,
                          builder: (context) => Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.2),
                              width: double.infinity,
                              height: size.height * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  begin: Alignment(-1.992, 0.034),
                                  end: Alignment(1, 0.034),
                                  colors: <Color>[
                                    Color(0xff00ffef),
                                    Color(0xff008f9a)
                                  ],
                                  stops: <double>[0, 1],
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {

                                  print(usernameController.text +
                                      '\n' +
                                      passwordController.text);

                                  if(usernameController.text.isEmpty || passwordController.text.isEmpty )
                                    {
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Make Sure From Email and Password")));
                                    }else {
                                   await LoginCubit.get(context).userLogin(
                                        usernameController.text,
                                        passwordController.text);
                                   Fluttertoast.showToast(
                                       msg: "Login Successfully",
                                       toastLength: Toast.LENGTH_SHORT,
                                       gravity: ToastGravity.BOTTOM,
                                       timeInSecForIosWeb: 5,
                                       backgroundColor:Color(0xff008f9a),
                                       textColor: Colors.white,
                                       fontSize: 16.0
                                   );
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (Context) {
                                          return PersonHomeScreen();
                                        }));
                                  }
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text('Login',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5,
                                      color: Color(0xffffffff),
                                    )),
                              )),
                          fallback: (context) => Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Don’t have an account ? ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5,
                                    color: Color(0xffa3a3a3),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (Context) {
                                      return DecisionScreen();
                                    }));
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5,
                                      color: Color(0xff008f9a),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
            ),
          );
        },
      ),
    );
  }
}
