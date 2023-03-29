import 'package:application/Messi_screen.dart';

import 'package:application/layout/todo_app/mistake.dart';
import 'package:application/moduals/Register_screen/Register_Screen.dart';
import 'package:application/moduals/Result/Result_screen.dart';
import 'package:application/moduals/info/showeinfo.dart';
import 'package:application/shared/componets/compontes.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  TextEditingController _name =new TextEditingController();

  var Formkay = GlobalKey<FormState>();

  bool ispassword = true;
  double redius = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: Formkay,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
    const Text(
    'Login',
    style: TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 40,
    ),
    ),
    const SizedBox(height: 20.0,),
    TextFormField(
    controller: emailcontroller,
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
    controller: passwordcontroller,
    keyboardType: TextInputType.number,

    obscureText: true,
    validator: (String? value) {
    if (value?.isEmpty ?? true) {
    return "Password can't be empty";
    }
    return null;
    },
    decoration: const InputDecoration(
    labelText: 'Password',
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
                  controller: _name,
                  keyboardType: TextInputType.text,
                  validator: (String? value) {
                    if (value?.isEmpty ?? true) {
                      return "Password can't be empty";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: "what's your name?",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.nest_cam_wired_stand_outlined)
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
    borderRadius: BorderRadius.circular(redius),
    color: Colors.cyan,
    ),
    child: MaterialButton(
    onPressed: () {
    // Navigate to the Home layout page
    // if form is validated successfully
    if (Formkay.currentState?.validate() == true) {
    print(emailcontroller.text);
    print(passwordcontroller.text);
    print(_name.text);
     Navigator.push(context,
         MaterialPageRoute(builder: (context) {
       return checkinfo( _name.text );
     }));
    }
    },
    child: Text(
    "Login",
    style: const TextStyle(color: Colors.white),

    ),
    ),
    ),
        SizedBox(height: 7.0,),

                Container(
                  width: double.infinity,
                  height: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(redius),
                    color: Colors.black45,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      // Navigate to the Home layout page
                      // if form is validated successfully
                      if (Formkay.currentState?.validate() == false || Formkay.currentState?.validate() == true) {
                        print(emailcontroller.text);
                        print(passwordcontroller.text);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return Register();
                            }));
                      }
                    },
                    child: Text(
                      "REGISTER",
                      style: const TextStyle(color: Colors.white),

                    ),
                  ),
                ),


                const SizedBox(height: 7.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.0),
                  child: Row(
                    children: [
                      Text("Don't have account?"),
                      SizedBox(width: .5,),
                      MaterialButton(onPressed: (){},
                        child: TextButton(onPressed: (){},
                            child: Text("Register now",
                            style:  TextStyle(
                              color: Colors.blue
                            ),))

                      )
                    ],),
                )





    ]

                ),
          )

          ),
        ),



    );
  }
}

