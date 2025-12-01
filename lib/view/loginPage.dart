import 'package:flutter/material.dart';
import 'package:two_gather/styles/appColors.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double _responsive(num) {
      final width = MediaQuery.widthOf(context);
      final ratio = width / 360;
      return num * ratio;
    }

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.all(_responsive(24)),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    'Hello, welcome back!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: _responsive(24),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: _responsive(16)),
                  Text(
                    'Login to continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: _responsive(16),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    // color: Colors.red,
                    width: _responsive(345),
                    child: TextField(
                      style: TextStyle(
                        backgroundColor: AppColors.font2,
                        color: Colors.white,
                      ),
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        
                        contentPadding: EdgeInsets.symmetric(
                          vertical: _responsive(12),
                          horizontal: _responsive(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(_responsive(12)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        labelText: "Username",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: _responsive(14),
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(_responsive(12)),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                  SizedBox(height: _responsive(16)),
                  SizedBox(
                    // color: Colors.red,
                    width: _responsive(345),
                    child: TextField(
                      onChanged: (value) {},
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: AppColors.font2,
                      ),
                      decoration: InputDecoration(
                        
                        contentPadding: EdgeInsets.symmetric(
                          vertical: _responsive(12),
                          horizontal: _responsive(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(_responsive(12)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: _responsive(14),
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(_responsive(12)),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        print('Forgot is clicked');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontSize: _responsive(14),
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: _responsive(32)),
                  SizedBox(
                    height: _responsive(48),
                    width: _responsive(267),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/bot');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.black,
                      ),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: _responsive(16),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Or sign in with',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: _responsive(14),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: _responsive(16)),
                  SizedBox(
                    height: _responsive(48),
                    width: _responsive(291),
                    child: ElevatedButton(
                      onPressed: () {
                        print('Google is clicked');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: StadiumBorder(),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google.png',
                            width: _responsive(22),
                            height: _responsive(22),
                          ),
                          SizedBox(width: _responsive(8)),
                          Text('Login with Google'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: _responsive(16)),
                  SizedBox(
                    height: _responsive(48),
                    width: _responsive(291),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: StadiumBorder(),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/facebook.png',
                            width: _responsive(22),
                            height: _responsive(22),
                          ),
                          SizedBox(width: _responsive(8)),
                          Text('Login with Facebook'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account? ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: _responsive(14),
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.primary,
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.primary,
                              fontWeight: FontWeight.w500,
                              fontSize: _responsive(14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
