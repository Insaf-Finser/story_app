import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:story_app/presentation/login/pages/loginpage.dart';

import '../../../core/config/assets/app_images.dart';
import '../../../core/config/assets/app_vectors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBG),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(color: Colors.black.withOpacity(0.15),),
          
          Padding(
             padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
             child: Column(children: [
              const SizedBox(height: 20,),
                SvgPicture.asset(AppVectors.logolight),
                const Spacer(),
                
                InkWell(
                  onTap:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) =>const LoginPage()),);
                  },
                    child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, -4),
                        blurRadius: 10,
                        ),
                      ],
                      ),
                      child: SvgPicture.asset(
                      AppVectors.roundB,
                      height: 50,
                      width: 50,
                      ),
                    ),
                    ),


                ),
                const SizedBox(height: 2,),
                Text('begin', style: TextStyle(color: Colors.white.withOpacity(0.3), fontFamily: 'Aladin-Regular', fontSize: 32 ,letterSpacing: 7 ),),
                const SizedBox(height: 25,),

              ]
              
              
              ),
           ),
        ],
      ),
    );
  }
}