import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:story_app/core/config/assets/app_images.dart';
import 'package:story_app/core/config/assets/app_vectors.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children :[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBG, ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(color: Colors.black.withOpacity(0.5),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              
              children: [
                
                const SizedBox(height: 50,),
                SvgPicture.asset(AppVectors.logodark, alignment: Alignment.center,),
                const SizedBox(height: 40,),

                Container(
                  alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: const Color.fromARGB(255, 194, 172, 98), width: 5),

            ),
            height: 540,
            width: 420,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 244, 234).withOpacity(0.6),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: const Color.fromARGB(255, 189, 167, 97), width: 5),

              ),
              height: 530,
              width: 420,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  const SizedBox(height: 10),
                  const Text('LOGIN',textAlign: TextAlign.left , style: TextStyle(fontSize: 40,fontFamily: 'Smooch', letterSpacing: 9 , fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(60),
                      backgroundColor: const Color.fromARGB(220, 255, 254, 248),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Color.fromARGB(255, 142, 142, 142), width: 2),
                      ),
                    ),
                    onPressed: () {},
                    child:Row( 
                      
                      children:[ 
                        SvgPicture.asset(AppVectors.man  ,alignment: Alignment.center,height:40, width: 40,), 
                        const SizedBox(width:18),  
                        const Text('CONNECT AS GUEST' , style: TextStyle(
                          color: Color.fromARGB(255, 122, 122, 121),
                          fontSize: 15
                          )
                        )
                      ]
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(60),
                      backgroundColor: const Color.fromARGB(220, 255, 254, 248),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Color.fromARGB(255, 142, 142, 142), width: 2),
                      ),
                    ),
                    onPressed: () {},
                    child:Row( 
                      
                      children:[ 
                        const SizedBox(width:1 ,),
                        SvgPicture.asset(AppVectors.google1  ,alignment: Alignment.center,height:35, width: 35,), 
                        const SizedBox(width:12),  
                        const Text('CONNECT WITH GOOGLE' , style: TextStyle(
                          color: Color.fromARGB(255, 122, 122, 121),
                          fontSize: 15
                          )
                        )
                      ]
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(60),
                      backgroundColor: const Color.fromARGB(220, 255, 254, 248),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Color.fromARGB(255, 142, 142, 142), width: 2),
                      ),
                    ),
                    onPressed: () {},
                    child: Row( 
                      
                      children:[ 
                        const SizedBox(width:1 ,),
                        SvgPicture.asset(AppVectors.x  ,alignment: Alignment.center,height:30, width: 30,), 
                        const SizedBox(width:16),  
                        const Text('CONNECT WITH TWITTER' , style: TextStyle(
                          color: Color.fromARGB(255, 122, 122, 121),
                          fontSize: 15
                          )
                        )
                      ]
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(60),
                      backgroundColor: const Color.fromARGB(220, 255, 254, 248),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Color.fromARGB(255, 142, 142, 142), width: 2),
                      ),
                    ),
                    onPressed: () {},
                    child: Row( 
                      
                      children:[ 
                        SvgPicture.asset(AppVectors.facebook  ,alignment: Alignment.center,height:30, width: 30,), 
                        const SizedBox(width:11),  
                        const Text('CONNECT WITH FACEBOOK' , style: TextStyle(
                          color: Color.fromARGB(255, 122, 122, 121),
                          fontSize: 15
                          )
                        )
                      ]
                    ),
                  ),
                ],
              ),
            ),
          ),
              ],
            ),
          ),
          const SizedBox(height: 50,),
        ] ,
      ),
      
    );
  }
}