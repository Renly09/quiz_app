import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {

  static const String routeName = "/sign_in_screen";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  String _email = '';
  String _password = '';

  void _submit() {
    FocusScope.of(context).unfocus();
    if(!_formkey.currentState!.validate()) {
      // invalid
      return;
    }

    _formkey.currentState!.save();

    //TODO:- authenticate with email and password
    // TODO:- Go to post screen
    // TODO:- Add Email verification

  }

  late final FocusNode _passwordFocusNode;

  final _formkey = GlobalKey<FormState>();

 @override
  void initState() {
   _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: ListView(
            physics: const  ClampingScrollPhysics(),
            padding: const EdgeInsets.all(50.0),

            children: [
              //Email
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textCapitalization: TextCapitalization.none,
                autocorrect: false,
                textInputAction: TextInputAction.next,
                onSaved: (value){
                  _email = value!.trim();
                },
                onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_passwordFocusNode),
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black
                    ),
                  ),
                  labelText: 'Enter Email'),
                validator: (value){

                  if(value != null && value.isNotEmpty){
                    return 'Please Provide Email...';
                  }
                  if (value!.length < 4){
                    return 'Please Provide longer Email...';
                  }
                  return null;
                },
              ),

              //Password
              TextFormField(
                focusNode: _passwordFocusNode,
                obscureText: true,
                textInputAction: TextInputAction.done,
                onSaved: (value){
                  _password = value!.trim();
                },
                onFieldSubmitted: (_){
                  //TODO:- Submit Form

                },
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                  labelText: 'Enter Password',
                ),
                validator: (value){

                  if(value != null && value.isNotEmpty){
                    return 'Please Provide Password...';
                  }
                  if (value!.length < 5){
                    return 'Please Provide longer Password...';
                  }
                  return null;
                },
              ),

              ElevatedButton(
                  onPressed: (){
                // TODO:- submit form and authenticate with email and password,
              }, child: const Text('Log in')),

              TextButton(onPressed: (){
                // TODO:- go to signup() screen
              }, child: const Text('Sign up'))

            ],

          ),
        ),
      ),
    );
  }
}
