import 'package:flutter/material.dart';
import 'package:shopping_cart/utils/helper_methods.dart';
import 'package:shopping_cart/utils/images_const.dart';
import 'package:zoom_widget/zoom_widget.dart';

class HopscotchMailboxScreen extends StatelessWidget {
  var _mainHeight;
  var _mainWidth;

  HopscotchMailboxScreen({Key? key}) : super(key: key);

  //maxZoomWidth: _mainWidth*1.5,
  //maxZoomHeight: _mainHeight*1.5,
  @override
  Widget build(BuildContext context) {
    _mainHeight = MediaQuery.of(context).size.height;
    _mainWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Zoom(
        maxZoomWidth: _mainWidth * 1.5,
        maxZoomHeight: _mainHeight * 1.5,
        child: Container(
          height: _mainHeight,
          width: _mainWidth,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: _mainHeight * 0.06,
                ),
                Center(child: Container(width: _mainWidth * 0.2, child: Image.asset(hopscotchLogo))),
                SizedBox(
                  height: _mainHeight * 0.01,
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: _mainHeight * 0.02, horizontal: _mainWidth * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        'Order Shipped',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.pink.shade500),
                      ),
                      SizedBox(
                        height: _mainHeight * 0.01,
                      ),
                      SelectableText(
                        'Dear PremierMonk,',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.black),
                      ),
                      SizedBox(
                        height: _mainHeight * 0.02,
                      ),
                      SelectableText(
                        'We are pleased to inform you that your Hopscotch order is on its way! We have packed it with care & couriered it.',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.black),
                      ),
                      SizedBox(
                        height: _mainHeight * 0.02,
                      ),
                      SelectableText(
                        'Request you to pay ₹169 to the courier associate visiting you.',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.black),
                      ),
                      SizedBox(
                        height: _mainHeight * 0.02,
                      ),
                      SelectableText(
                        'We look forward to seeing you again.',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.black),
                      ),
                      SizedBox(
                        height: _mainHeight * 0.02,
                      ),
                      GestureDetector(
                          onTap: (){
                            urlLaunch( webUrl: 'https://www.hopscotch.in/moments/?utm_source=transactional&utm_medium=SMS&utm_campaign=Moments-Contest-SMS-25April&_branch_match_id=1097765661957161454&_branch_referrer=H4sIAAAAAAAAA8soKSkottLXz8gvKE7OL0nO0EssKNDLyczL1k8LDfMPSInMcnEGAJxz648lAAAA');
                            },
                          child: SizedBox(width: _mainWidth, child: Image.asset(momentsBanner))),
                    ],
                  ),
                ),
                SizedBox(
                  height: _mainHeight * 0.01,
                ),
                Divider(),
                SizedBox(
                  height: _mainHeight * 0.01,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: _mainWidth * 0.04),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: _mainWidth * 0.52,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SelectableText(
                              'SHIPMENT DETAILS',
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                            SelectableText('Tracking ID: SF321527154HO', style: mediumBlackFontStyle),
                            SelectableText('Sent through: Shadowfax', style: mediumBlackFontStyle),
                            SizedBox(
                              height: _mainHeight * 0.01,
                            ),
                            Container(
                              height: _mainHeight * 0.05,
                              child: ElevatedButton(
                                onPressed: () async {
                                  urlLaunch( webUrl: 'https://hopscotch.clickpost.in/?cp_id=9&waybill=SF321527154HO');
                                  },
                                child: Text(
                                  'TRACK SHIPMENT',
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2), // <-- Radius
                                    ),
                                    backgroundColor: Colors.pink.shade400),
                              ),
                            ),
                            SizedBox(
                              height: _mainHeight * 0.02,
                            ),
                            SelectableText(
                              '*Please note that tracking ID may take up to 24 hours to get activated.',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: _mainWidth * 0.1,
                      ),
                      Container(
                        width: _mainWidth * 0.38,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SelectableText(
                              'SHIPPED TO',
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                            SelectableText(
                              'PremierMonk',
                              style: mediumBlackFontStyle,
                            ),
                            SelectableText(
                              'PremierMonk Pvt Ltd, 649, 13th Cross, 27th Main, mrk Sector 1, Bangalore 560102',
                              style: mediumBlackFontStyle,
                            ),
                            SelectableText(
                              'Bangalore, Karnataka 560102',
                              style: mediumBlackFontStyle,
                            ),
                            SelectableText(
                              '9886158353',
                              style: mediumBlackFontStyle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: _mainHeight * 0.02,
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: _mainHeight * 0.02, horizontal: _mainWidth * 0.04),
                  child: Row(
                    children: [
                      Container(height: _mainHeight * 0.06, width: _mainWidth * 0.12, child: Icon(Icons.celebration)),
                      SizedBox(
                        width: _mainWidth * 0.03,
                      ),
                      Container(
                        width: _mainWidth * 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SelectableText(
                              'Cutest Princess Pink Glitter Slippers On Alligator Clip',
                              style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w600),
                            ),
                            SelectableText(
                              'Qty: 1',
                              style: TextStyle(fontSize: 16, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      SelectableText(
                        '₹275.00',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: _mainWidth * 0.04, vertical: _mainHeight * 0.005),
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SelectableText(
                        'Subtotal',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
                      ),
                      SizedBox(
                        width: _mainWidth * 0.1,
                      ),
                      SelectableText(
                        '₹69.0',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                Divider(),
                SizedBox(
                  height: _mainHeight * 0.01,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: _mainWidth * 0.04, vertical: _mainHeight * 0.005),
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SelectableText(
                        'Shipping',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
                      ),
                      SizedBox(
                        width: _mainWidth * 0.1,
                      ),
                      SelectableText(
                        '₹100.0',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: _mainHeight * 0.01,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: _mainWidth * 0.04, vertical: _mainHeight * 0.005),
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SelectableText(
                        'Order Total',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
                      ),
                      SizedBox(
                        width: _mainWidth * 0.1,
                      ),
                      SelectableText(
                        '₹169.0',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: _mainHeight * 0.01),
                Divider(),
                GestureDetector(
                    onTap: (){
                      urlLaunch( webUrl: 'https://www.hopscotch.in/helpcenter/#/contact_us');
                      },
                    child: Container(height: _mainHeight * 0.07, child: Image.asset(helpEmailBanner)))
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle get mediumBlackFontStyle => const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500);
}
