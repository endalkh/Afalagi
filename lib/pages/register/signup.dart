import 'package:delalaw/api/register/get_register_api.dart';
import 'package:delalaw/api/register/register_post_class.dart';
import 'package:delalaw/constants/colors.dart';
import 'package:delalaw/constants/constants.dart';
import 'package:delalaw/constants/gradients.dart';
import 'package:delalaw/pages/appbar/AppBar.dart';
import 'package:delalaw/pages/progress/circularProgressBar.dart';
import 'package:delalaw/pages/widgets/custom_shape.dart';
import 'package:delalaw/pages/widgets/customappbar.dart';
import 'package:delalaw/pages/widgets/responsive_ui.dart';
import 'package:delalaw/pages/widgets/textformfield.dart';
import 'package:flutter/material.dart';



class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  Future<RegisterPost> post;

  bool checkBoxValue = false;
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large =  ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium =  ResponsiveWidget.isScreenMedium(_width, _pixelRatio);

    return Material(
      child: Scaffold(
       appBar: headerNav(context:context,title: "Register"),
        body: Container(
          height: _height,
          width: _width,
          margin: EdgeInsets.only(bottom: 5),
          child: isLoading?CircularIndicator(): SingleChildScrollView(
            child: Column(
              children: <Widget>[
//                Opacity(opacity: 0.88,child: CustomAppBar()),
                clipShape(),
                form(),
                acceptTermsTextRow(),
                SizedBox(height: 10,),
                button(),
                infoTextRow(),
                socialIconsRow(),
                //signInTextRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  postRegister(){
    setState(() => isLoading = true);
    post = registerPost(
      firstNameController.text,
      lastNameController.text,
      emailController.text,
      passwordController.text,
    );
    setState(() => isLoading = false);
    print( post);
  }
   appBarComponent(context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
          child: Row(
            children: <Widget>[
              Container(
                width: 90,
                height: 80,
                padding: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  gradient: BLUE_GRADIENT,
                  borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(100)),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: WHITE_COLOR,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          )),
    );
  }
  clipShape() {
    return Stack(
      children: <Widget>[

        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height:_large? _height/6: (_medium? _height/5.75 : _height/5.5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.blue]
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _large? _height/6.5 : (_medium? _height/6.25 : _height/6),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.blue]
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
//          margin: EdgeInsets.only(top: _large? _height/30 : (_medium? _height/25 : _height/20)),
          child: Image.asset(
            'assets/images/login.png',
            height: _height/3.5,
            width: _width/3.5,
          ),
        ),

      ],
    );
  }
  form() {
    return Container(
      margin: EdgeInsets.only(
          left:_width/ 12.0,
          right: _width / 12.0,
          top: 5.0),
      child: Form(
        child: Column(
          children: <Widget>[
            firstNameTextFormField(),
            SizedBox(height:10),
            lastNameTextFormField(),

            SizedBox(height: 10),
            phoneTextFormField(),
            SizedBox(height: 10),
            passwordTextFormField(),
          ],
        ),
      ),
    );
  }
  firstNameTextFormField() {
    return CustomTextField(

      keyboardType: TextInputType.text,
      textEditingController: firstNameController,
      icon: Icons.person,
      hint: "First Name",
    );
  }
  lastNameTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      textEditingController: lastNameController,
      icon: Icons.person,
      hint: "Last Name",
    );
  }
  phoneTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.number,
      textEditingController: emailController,
      icon: Icons.phone,
      hint: "Mobile Number or email",
    );
  }
  passwordTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      textEditingController: passwordController,
      obscureText: true,
      icon: Icons.lock,
      hint: "Password",
    );
  }
  acceptTermsTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 100.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              activeColor: Colors.orange[200],
              value: checkBoxValue,
              onChanged: (bool newValue) {
                setState(() {
                  checkBoxValue = newValue;
                });
              }),
          Text(
            "I accept all terms and conditions",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: _large? 12: (_medium? 11: 10)),
          ),
        ],
      ),
    );
  }
  button() {
    return RaisedButton(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      onPressed: () {
        postRegister();
      },
      textColor: Colors.white,
      padding: EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.center,
//        height: _height / 20,
        width:_large? _width/4 : (_medium? _width/3.75: _width/3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
            colors: <Color>[Colors.deepOrange, Colors.blue],
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text('SIGN UP', style: TextStyle(fontSize: _large? 14: (_medium? 12: 10)),),
      ),
    );
  }
  infoTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Or create using social media",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: _large? 12: (_medium? 11: 10)),
          ),
        ],
      ),
    );
  }
  socialIconsRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 80.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/googlelogo.png"),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/fblogo.jpg"),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/twitterlogo.jpg"),
          ),
        ],
      ),
    );
  }
  signInTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Already have an account?",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop(SIGN_IN);
              print("Routing to Sign up screen");
            },
            child: Text(
              "Sign in",
              style: TextStyle(
                  fontWeight: FontWeight.w800, color: Colors.orange[200], fontSize: 19),
            ),
          )
        ],
      ),
    );
  }
}
