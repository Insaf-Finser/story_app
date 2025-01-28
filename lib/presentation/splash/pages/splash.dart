import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:story_app/core/config/assets/app_vectors.dart';

import '../../intro/pages/get_started.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppVectors.logolight
        )
      ),
    );
  }

  Future<void> redirect() async {
  await Future.delayed(const Duration(seconds: 3));
  if(!mounted) return;
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) => const GetStartedPage(),
    ),
  );
}
}