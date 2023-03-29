import 'package:application/moduals/info/showeinfo.dart';
import 'package:application/moduals/login/login_desgin.dart';
import 'package:application/shared/blocBmiscreen/Bmistates.dart';
import 'package:application/shared/blocBmiscreen/cubiit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Register extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CubitBmi(),
      child: BlocConsumer<CubitBmi,Bmistates>(
        listener: (BuildContext context, Object? state) {  },
        builder: (BuildContext context, state) {

          CubitBmi lose = CubitBmi.get(context);
          return Scaffold(
              appBar: AppBar(
                title: const Text(" Sign up",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                  ),),
              ),
              body: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                      child: Form(
                          key: lose.Formkay,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20.0,),
                                TextFormField(
                                  controller: lose.namecontroller,
                                  keyboardType: TextInputType.text,
                                  validator: (String? value) {
                                    if (value?.isEmpty ?? true) {
                                      return "Email can't be empty";
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'name!',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(
                                      Icons.nest_cam_wired_stand,
                                    ),
                                    suffixIcon: Icon(Icons.nest_cam_wired_stand),
                                  ),
                                  onFieldSubmitted: (String value) {
                                    print(value);
                                  },
                                  onChanged: (String value) {
                                    print(value);
                                  },
                                ),
                                const SizedBox(height: 20.0,),
                                TextFormField(
                                  controller: lose.emailcontroller2,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (String? value) {
                                    if (value?.isEmpty ?? true) {
                                      return "Email can't be empty";
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'Email address',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(
                                      Icons.email,
                                    ),
                                    suffixIcon: Icon(Icons.email_outlined),
                                  ),
                                  onFieldSubmitted: (String value) {
                                    print(value);
                                  },
                                  onChanged: (String value) {
                                    print(value);
                                  },
                                ),
                                const SizedBox(height: 20.0,),
                                TextFormField(
                                  controller: lose.passcontroller,
                                  keyboardType: TextInputType.number,
                                  obscureText: true,
                                  validator: (String? value) {
                                    if (value?.isEmpty ?? true) {
                                      return "Password can't be empty";
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'new Password',
                                    suffixIcon: Icon(Icons.remove_red_eye),
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                    ),
                                  ),
                                  onFieldSubmitted: (value) {
                                    print(value);
                                  },
                                  onChanged: (value) {
                                    print(value);
                                  },
                                ),
                                const SizedBox(height: 20.0,),
                                TextFormField(
                                  controller: lose.ppasscontroller,
                                  keyboardType: TextInputType.number,
                                  validator: (String? value) {
                                    if (value?.isEmpty ?? true) {
                                      return "Password can't be empty";
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'mobile phone',
                                    suffixIcon: Icon(Icons.install_mobile_sharp),
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(
                                      Icons.mobile_friendly,
                                    ),
                                  ),
                                  onFieldSubmitted: (value) {
                                    print(value);
                                  },
                                  onChanged: (value) {
                                    print(value);
                                  },
                                ),
                                const SizedBox(height: 20.0,),
                                TextFormField(
                                  obscureText: true,
                                  controller: lose.conpasscontroller,
                                  keyboardType: TextInputType.number,
                                  validator: (String? value) {
                                    if (value?.isEmpty ?? true) {
                                      return "Password can't be empty";
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'Confirm password',
                                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(
                                      Icons.lock_open,
                                    ),
                                  ),
                                  onFieldSubmitted: (value) {
                                    print(value);
                                  },
                                  onChanged: (value) {
                                    print(value);
                                  },
                                ),
                                const SizedBox(height: 20.0,),
                                Container(
                                  width: double.infinity,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(lose.redius),
                                    color: Colors.blue,
                                  ),
                                  child: MaterialButton(
                                    onPressed: () {
                                      // Navigate to the Home layout page
                                      // if form is validated successfully
                                      if (lose.Formkay.currentState?.validate() == true) {
                                        print(lose.namecontroller.text);
                                        print(lose.emailcontroller2.text);
                                        print(lose.passcontroller.text);
                                        print(lose.ppasscontroller.text);
                                        print(lose.conpasscontroller.text);
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) {
                                              return login();
                                            }));
                                      }
                                    },
                                    child: const Text(
                                      "Confirm",
                                      style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),

                                    ),
                                  ),
                                ),

                              ]
                          )
                      )
                  )
              )
          );
        },
      ),
    );
  }
}
