import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignUpScreen extends StatefulWidget {

  static const String routeName = "/sign_up_screen";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  String _email = "";
  String _username = "";
  String _password = "";

  late final FocusNode _usernameFocusNode;
  late final FocusNode _passwordFocusNode;

  void _submit(){

    FocusScope.of(context).unfocus();
    if(!_formkey.currentState!.validate()) {
      // invalid
      return;
    }

    _formkey.currentState!.save();

    //TODO:- Sign Up with email and password
    // TODO:- Send email to verify account

  }

  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    _usernameFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _usernameFocusNode.dispose();
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
             physics: const ClampingScrollPhysics(),
             padding: const EdgeInsets.all(50),
             children: [
               // Email
               TextFormField(
                 keyboardType: TextInputType.emailAddress,
                 textCapitalization: TextCapitalization.none,
                 autocorrect: false,
                 textInputAction: TextInputAction.next,
                 onSaved: (value){
                   _email = value!.trim();
                 },
                 onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_usernameFocusNode),
                 decoration: const InputDecoration(
                   enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.black)
                   ),
                   labelText: 'Enter mail'),
                 validator: (value){

                   if(value != null && value.isNotEmpty){
                     return 'Please Provide Password...';
                   }
                   if (value!.length < 4){
                     return 'Please Provide longer Password...';
                   }
                   return null;

                 },
               ),
               // Username
               TextFormField(
                 focusNode: _usernameFocusNode,
                 textInputAction: TextInputAction.next,
                 onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_passwordFocusNode),
                 onSaved: (value) {
                   _username = value!.trim();
                 },
                 decoration: const InputDecoration(
                     enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.black)
                     ),
                     labelText: 'Enter Username'),
                     autocorrect: false,
                 textCapitalization: TextCapitalization.none,

                 validator: (value){

                   if(value != null && value.isNotEmpty){
                     return 'Please Provide Username...';
                   }
                   if (value!.length < 4){
                     return 'Please Provide longer Username...';
                   }
                   return null;

                 },

               ),
               // password
               TextFormField(
                 focusNode: _passwordFocusNode,
                 textInputAction: TextInputAction.done,
                 onFieldSubmitted: (_) => _submit(),
                 obscureText: true,
                 onSaved: (value) {
                   _password = value!.trim();
                 },
                   decoration: const InputDecoration(
                       enabledBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.black)
                       ),
                       labelText: 'Enter Password'),
                 validator: (value){

                   if(value != null && value.isNotEmpty){
                     return 'Please Provide Password...';
                   }
                   if (value!.length < 4){
                     return 'Please Provide longer Password...';
                   }
                   return null;

                 },


               ),

               ElevatedButton(onPressed: (){
                 // TODO:- sign UP
               }, child: const Text('Sign Up')),

               TextButton(onPressed: (){
                 // TODO:-  Go to Sign In screen
               }, child: const Text('Sign In instead'))
             ],
           ),

         ),
      )

    );
  }
}
