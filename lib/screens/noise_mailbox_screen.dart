import 'package:flutter/material.dart';
import 'package:shopping_cart/utils/images_const.dart';
import 'package:zoom_widget/zoom_widget.dart';

import '../utils/helper_methods.dart';

class NoiseMailboxScreen extends StatelessWidget {
  var _mainHeight;
  var _mainWidth;
  NoiseMailboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _mainHeight = MediaQuery.of(context).size.height;
    _mainWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Zoom(
        maxZoomWidth: _mainWidth * 2,
        maxZoomHeight: _mainHeight * 2,
        child: Container(
          height: _mainHeight,
          width: _mainWidth,
          padding: EdgeInsets.symmetric(vertical: _mainHeight * 0.02, horizontal: _mainWidth * 0.04),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: _mainHeight * 0.07,
                ),
                Container(
                  width: _mainWidth,
                  color: Colors.black,
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      SizedBox(
                          width: _mainWidth*0.3,
                          child: Image.asset(noiseLogo,)),
                    ],
                  ),
                ),
                SizedBox(height: _mainHeight*0.02,),
                SelectableText('THANK YOU FOR PLACING YOUR ORDER WITH US.',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
                ),),
                SizedBox(
                  height: _mainHeight * 0.015,
                ),
                SelectableText('Your order number: 2343881 has been confirmed.',style: TextStyle(
                  fontSize: 16
                ),),
                SizedBox(
                  height: _mainHeight * 0.04,
                ),
                SelectableText('NOTE:',style: TextStyle(
                    fontSize: 16,
                  fontWeight: FontWeight.w500
                ),),
                SizedBox(
                  height: _mainHeight * 0.02,
                ),
                SelectableText('Please be aware that if your address lies within a designated COVID-19 containment and under lockdown zone, Noise will only be able to deliver your order as soon as government regulations allow.',style: TextStyle(
                    fontSize: 16
                ),),
                SizedBox(
                  height: _mainHeight * 0.04,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: _mainHeight*0.01,
                    horizontal: _mainWidth*0.02
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),

                    color: Colors.grey.shade200
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText('REGISTERED ADDRESS:',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),),
                      SizedBox(
                        height: _mainHeight * 0.005,
                      ),
                      SelectableText('Mesh ., MeshMonk Pvt Ltd, 649, 13th Cross, 27th Main, HSR Sector 1, Bangalore 560102, BANGALORE, Karnataka, 560102, India',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                ),


                SizedBox(
                  height: _mainHeight * 0.02,
                ),
                SelectableText("Here's your order:",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
                ),),
                SizedBox(
                  height: _mainHeight * 0.02,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: _mainHeight*0.002,horizontal: _mainWidth*0.01),
                          width: _mainWidth*0.2,
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.5,color: Colors.grey),
                          ),
                          child: SelectableText('Item'),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: _mainHeight*0.002,horizontal: _mainWidth*0.01),

                          width: _mainWidth*0.2,
                          height: _mainHeight*0.06,
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.5,color: Colors.grey),
                          ),
                          child: SelectableText('1'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: _mainWidth*0.6,
                          padding: EdgeInsets.symmetric(vertical: _mainHeight*0.002,horizontal: _mainWidth*0.01),

                          decoration: BoxDecoration(
                            border: Border.all(width: 0.5,color: Colors.grey),
                          ),
                          child: SelectableText('Name'),
                        ),
                        Container(
                          width: _mainWidth*0.6,
                          height: _mainHeight*0.06,
                          padding: EdgeInsets.symmetric(vertical: _mainHeight*0.001,horizontal: _mainWidth*0.01),

                          decoration: BoxDecoration(
                            border: Border.all(width: 0.5,color: Colors.grey),
                          ),
                          child: SelectableText('Noise Nerve Neckband Earphones with Mic'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: _mainWidth*0.2,
                          padding: EdgeInsets.symmetric(vertical: _mainHeight*0.002,horizontal: _mainWidth*0.01),

                          decoration: BoxDecoration(
                            border: Border.all(width: 0.5,color: Colors.grey),
                          ),
                          child: SelectableText('Quantity'),
                        ),
                        Container(
                          width: _mainWidth*0.2,
                          height: _mainHeight*0.06,
                          padding: EdgeInsets.symmetric(vertical: _mainHeight*0.002,horizontal: _mainWidth*0.01),

                          decoration: BoxDecoration(
                            border: Border.all(width: 0.5,color: Colors.grey),
                          ),
                          child: SelectableText('1'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: _mainWidth*0.4,
                          padding: EdgeInsets.symmetric(vertical: _mainHeight*0.002,horizontal: _mainWidth*0.01),

                          decoration: BoxDecoration(
                            border: Border.all(width: 0.5,color: Colors.grey),
                          ),
                          child: SelectableText('Price'),
                        ),
                        Container(
                          width: _mainWidth*0.4,
                          height: _mainHeight*0.06,
                          padding: EdgeInsets.symmetric(vertical: _mainHeight*0.002,horizontal: _mainWidth*0.01),

                          decoration: BoxDecoration(
                            border: Border.all(width: 0.5,color: Colors.grey),
                          ),
                          child: SelectableText('Rs. 999.00'),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: _mainHeight * 0.03,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child:  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Total:',
                          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black,fontSize: 14),
                        ),
                        TextSpan(
                            text: ' Rs.999.0',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, color: Colors.black,fontSize: 14))
                      ]),
                    ),
                    //child: SelectableText('Total: Rs.999.0')
                ),
                SizedBox(
                  height: _mainHeight * 0.02,
                ),
                GestureDetector(
                  onTap: (){
                    urlLaunch( webUrl: 'https://www.gonoise.com/collections/smart-watches');

                  },
                  child: SizedBox(
                      height: _mainHeight*0.25,
                      child: Image.asset(noiseAds1)),
                ),

                GestureDetector(
                  onTap: (){
                    urlLaunch( webUrl: 'https://www.gonoise.com/collections/wireless-audio');
                  },
                  child: SizedBox(
                      height: _mainHeight*0.25,
                      child: Image.asset(noiseAds2)),
                ),
                SizedBox(
                  height: _mainHeight * 0.01,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: _mainHeight*0.01,
                      horizontal: _mainWidth*0.02
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),

                      color: Colors.grey.shade200
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText('We will let you know as soon as your order is shipped. In the meantime, if there’s anything we can help you with, just fill out a form HERE and we’ll get right back to you! We’re available from 9:30AM to 6:00PM from Monday to Saturday.',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),),
                      SizedBox(
                        height: _mainHeight * 0.01,
                      ),
                      SelectableText('Stay safe and thank you for your patience.',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),),
                      SizedBox(
                        height: _mainHeight * 0.02,
                      ),
                      SelectableText('Please Note:',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),),
                      SelectableText('Noise or its employees will never contact you with any special offers including lucky draws, lotteries or exclusive prizes. Please do not share your personal or bank account details over the phone or via email to stay protected against any kind of fraudulent deals.',style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14
                      ),),
                      SizedBox(
                        height: _mainHeight * 0.02,
                      ),
                      Center(
                        child: SelectableText('CONNECT WITH US',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),),

                      ),
                      SizedBox(
                        height: _mainHeight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: (){
                                urlLaunch( webUrl: 'https://www.facebook.com/gonoise/');
                              },

                              child: getSocialLogo(logo: fbLogo)),

                          SizedBox(width: _mainWidth*0.05,),
                          GestureDetector(
                              onTap: (){
                                urlLaunch( webUrl: 'https://www.instagram.com/go_noise/');
                              },
                              child: getSocialLogo(logo: instagramLogo)),
                          SizedBox(width: _mainWidth*0.05,),
                          GestureDetector(
                              onTap: (){
                                urlLaunch( webUrl: 'https://twitter.com/gonoise');
                              },
                              child: getSocialLogo(logo: twitterLogo)),
                          SizedBox(width: _mainWidth*0.05,),
                          GestureDetector(
                              onTap: (){
                                urlLaunch( webUrl: 'https://www.youtube.com/channel/UCF9puX2jalk1fh14ns_npMw');
                              },
                              child: getSocialLogo(logo: youtubeLogo)),
                          SizedBox(width: _mainWidth*0.05,),
                          GestureDetector(
                              onTap: (){
                                urlLaunch( webUrl: 'https://www.linkedin.com/company/gonoise-com/');
                              },
                              child: getSocialLogo(logo: linkedinLogo))
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: _mainHeight * 0.03,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget getSocialLogo({required String logo}){
    return Container(
      height: _mainHeight*0.03,
      child: Image.asset(logo),
    );
  }
}
