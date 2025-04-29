// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:adminuserlf/consts/colors.dart';
import 'package:adminuserlf/screens/admin/adminhome.dart';
import 'package:adminuserlf/screens/user/userevents.dart';
import 'package:adminuserlf/widgets/custombutton.dart';
import 'package:adminuserlf/widgets/customtxtfield.dart';
import 'package:adminuserlf/widgets/mntxt.dart';
import 'package:adminuserlf/widgets/txtiph.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  TextEditingController un = TextEditingController();
  TextEditingController pw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    final screenwidth = mediaquery.size.width;
    return Scaffold(
      backgroundColor: Usingcolors.bgcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 80),
                Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Usingcolors.iconscolor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Usingcolors.btntxtcolor,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Mntxt(txt: 'Welcome Back'),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    'Sign in to continue',
                    style: TextStyle(
                      fontSize: 14,
                      color: Usingcolors.hinttxt,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                if (screenwidth <= 600) mobileview(),
                if (screenwidth > 600 && screenwidth <= 992) tabletview(),
                if (screenwidth > 992) webview(),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Usingcolors.iconscolor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget mobileview() {
    return Column(
      children: [
        Txtiph(txt: 'Username'),
        const SizedBox(height: 8),
        Customtxtfield(
          txt: 'Enter Username',
        ),
        const SizedBox(height: 20),
        Txtiph(txt: 'Password'),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            obscureText: _obscureText,
            style: const TextStyle(color: Usingcolors.mainhcolor),
            decoration: InputDecoration(
              hintText: 'Enter your password',
              hintStyle: const TextStyle(color: Usingcolors.hinttxt),
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Usingcolors.iconscolor,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Custombutton(
          txt: 'Login',
          call: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return HomeScreen();
            }));
          },
          calllong: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return EventsScreen();
            }));
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget tabletview() {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 500,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Txtiph(txt: 'Username'),
              const SizedBox(height: 8),
              Customtxtfield(txt: 'Enter Username'),
              const SizedBox(height: 20),
              Txtiph(txt: 'Password'),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  obscureText: _obscureText,
                  style: const TextStyle(color: Usingcolors.mainhcolor),
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: const TextStyle(color: Usingcolors.hinttxt),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Usingcolors.iconscolor,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Custombutton(
                txt: 'Login',
                call: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeScreen()));
                },
                calllong: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => EventsScreen()));
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget webview() {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Container(
          width: 400,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Txtiph(txt: 'Username'),
              const SizedBox(height: 8),
              Customtxtfield(txt: 'Enter Username'),
              const SizedBox(height: 20),
              Txtiph(txt: 'Password'),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  obscureText: _obscureText,
                  style: const TextStyle(color: Usingcolors.mainhcolor),
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: const TextStyle(color: Usingcolors.hinttxt),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Usingcolors.iconscolor,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Custombutton(
                txt: 'Login',
                call: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return HomeScreen();
                  }));
                },
                calllong: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return EventsScreen();
                  }));
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
