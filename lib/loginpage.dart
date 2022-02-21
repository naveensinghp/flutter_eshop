import 'package:flutter/material.dart';
import 'package:flutter_eshop/signup.dart';

import 'constant.dart';


class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to Eshop!',
                style: TextStyle(
                    fontFamily: gilory,
                    fontSize: 25
                ),
              ),
              const Text(
                'Login to Continue',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: gilory,
                    fontSize: 26
                ),
              ),
              const SizedBox(height: 20,),
              Center(
                child: Container(
                    width: 250,
                    height: 250,
                    decoration:  const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image/cool.jpg'),
                          fit: BoxFit.cover,
                          //alignment: Alignment.bottomLeft,
                        )
                    )
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontFamily: gilory
                          )
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                        labelStyle: TextStyle(
                          fontFamily: gilory
                        )
                      ),
                    ),
                    const SizedBox(height: 15,),
                    const Text('Forgot Password ?'),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Login'),
                        style: ElevatedButton.styleFrom(
                            onPrimary: Colors.black87,
                            primary: const Color(0xff00e2e3),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          _goSignupPage(context);
                        },
                        child: const Text('Create Account'),
                        style: ElevatedButton.styleFrom(
                            onPrimary: Colors.black87,
                            primary: Colors.white70,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            )
                        ),
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _goSignupPage(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const SignupPage()));
  }
}