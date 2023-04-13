import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_demo/utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  Widget _buildEmailTF() {
    return Stack(children: [
      Positioned(
          child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 60.0,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
                onChanged: (text) {
                   print('Email: ' +text);
                },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                      color: Color.fromARGB(230, 12, 11, 11), width: 5.0),
                ),
                contentPadding: EdgeInsets.only(top: 14.0, left: 15.0),
                suffixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: ' Nhập Email',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ],
      )),
      Positioned(
        bottom: 40,
        left: 30,
        right: 30,
        child: Container(
          // const EdgeInsets.fromLTRB(this.left, this.top, this.right, this.bottom);
          child: Text.rich(
            TextSpan(
              text: '\u00A0\u00A0Email\u00A0\u00A0',
              style: kLabelStyle,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget _buildPasswordTF() {
    return Stack(children: [
      Positioned(
          child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 60.0,
            child: TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
                onChanged: (pass) {
                   print('Mật khẩu: ' +pass);
                },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                      color: Color.fromARGB(230, 12, 11, 11), width: 5.0),
                ),
                contentPadding: EdgeInsets.only(top: 14.0, left: 15.0),
                suffixIcon: Icon(
                  Icons.lock_open,
                  color: Colors.black,
                ),
                hintText: ' Nhập mật khẩu',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ],
      )),
      Positioned(
        bottom: 40,
        left: 30,
        right: 30,
        child: Container(
          // const EdgeInsets.fromLTRB(this.left, this.top, this.right, this.bottom);
          child: Text.rich(
            TextSpan(
              text: '\u00A0\u00A0Nhập mật khẩu\u00A0\u00A0',
              style: kLabelStyle,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget _buildRePasswordTF() {
    return Stack(children: [
      Positioned(
          child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 60.0,
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              onChanged: (rePassword) {
                   print('Re password: ' +rePassword);
              },
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                      color: Color.fromARGB(230, 12, 11, 11), width: 5.0),
                ),
                contentPadding: EdgeInsets.only(top: 14.0, left: 15.0),
                suffixIcon: Icon(
                  Icons.lock_open,
                  color: Colors.black,
                ),
                hintText: ' Nhập lại mật khẩu',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ],
      )),
      Positioned(
        bottom: 40,
        left: 30,
        right: 30,
        child: Container(
          // const EdgeInsets.fromLTRB(this.left, this.top, this.right, this.bottom);
          child: Text.rich(
            TextSpan(
              text: '\u00A0\u00A0Xác nhận mật khẩu\u00A0\u00A0',
              style: kLabelStyle,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget _buildPhoneTF() {
    return Stack(children: [
      Positioned(
          child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 60.0,
            child: TextField(
              keyboardType: TextInputType.phone,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
              onChanged: (phone) => (
                  print('phone' + phone)
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                      color: Color.fromARGB(230, 12, 11, 11), width: 5.0),
                ),
                contentPadding: EdgeInsets.only(top: 14.0, left: 15.0),
                suffixIcon: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                hintText: ' Nhập số điện thoại',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ],
      )),
      Positioned(
        bottom: 40,
        left: 30,
        right: 30,
        child: Container(
          // const EdgeInsets.fromLTRB(this.left, this.top, this.right, this.bottom);
          child: Text.rich(
            TextSpan(
              text: '\u00A0\u00A0Số điện thoại\u00A0\u00A0',
              style: kLabelStyle,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget _buildLoginBtn() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        width: double.infinity,
        child: ElevatedButton(
          // Required: event click
          onPressed: () => print('Login Button Pressed'),
          child: const Text('Tiếp tục'),
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 216, 69, 10),
              textStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              )),
        ));
  }

  /* Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  } */

  //
  GestureDetector _buildSocialButton(String image, String message) {
    return GestureDetector(
      onTap: () => print(message),
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: Image.asset(image),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildSocialButton(
          'assets/logos/facebook.jpg',
          'Facebook button pressed',
        ),
        SizedBox(width: 20.0),
        _buildSocialButton(
          'assets/logos/google.jpg',
          'Google button pressed',
        ),
        SizedBox(width: 20.0),
        _buildSocialButton(
          'assets/logos/twitter.jpg',
          'Twitter button pressed',
        ),
      ],
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(
      child: Text(
        'Bằng cách xác nhận nghĩa là bạn đã đồng ý với chính sách của chúng tôi',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 40.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Đăng ký tài khoản',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Hoàn thành chi tiết hoặc tiếp tục sử dụng với phương tiện mạng xã hội',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildEmailTF(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildPasswordTF(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildRePasswordTF(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildPhoneTF(),
                      _buildLoginBtn(),
                      _buildSocialBtnRow(),
                      _buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
