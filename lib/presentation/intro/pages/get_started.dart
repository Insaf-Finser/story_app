import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:story_app/common/widgets/buttons/basic_app_button.dart';
import 'package:story_app/core/config/theme/app_colors.dart';

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
                SvgPicture.asset(AppVectors.logolight),
                const Spacer(),
                
                RoundAppButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Container()
                      )
                    );
                  }, 
                  title: ''
                ),
                const SizedBox(height: 5,),
                const Text('begin', style: TextStyle(color: AppColors.primary ,  ),),
                                const SizedBox(height: 30,),

              ]
              
              
              ),
           ),
        ],
      ),
    );
  }
}