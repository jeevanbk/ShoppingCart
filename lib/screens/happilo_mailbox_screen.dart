import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart/utils/images_const.dart';
import 'package:zoom_widget/zoom_widget.dart';

import '../utils/helper_methods.dart';

class HappiloMailboxScreen extends StatelessWidget {
  var _mainHeight;
  var _mainWidth;

  HappiloMailboxScreen({Key? key}) : super(key: key);

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
          padding: EdgeInsets.symmetric(vertical: _mainHeight * 0.02, horizontal: _mainWidth * 0.04),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: _mainHeight * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(width: _mainWidth * 0.2, child: Image.asset(happiloLogo)),
                    SelectableText(
                      'ORDER #226324',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: _mainHeight * 0.03,
                ),
                SelectableText(
                  'Thank you for your purchase!',
                  style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: _mainHeight * 0.02,
                ),
                SelectableText(
                  "Hi Sparks, we're getting your order ready to be shipped. We will notify you when it has been sent.",
                  style: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: _mainHeight * 0.025,
                ),
                Row(
                  children: [
                    Container(
                      height: _mainHeight * 0.06,
                      child: ElevatedButton(
                        onPressed: () {
                          urlLaunch( webUrl: 'https://happilo.com/56968675527/orders/ae104d7c6bab2bc032d5791a22c1007d');
                        },
                        child: Text(
                          'View your order',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), // <-- Radius
                            ),
                            backgroundColor: Colors.blue.shade400),
                      ),
                    ),
                    SizedBox(
                      width: _mainWidth * 0.03,
                    ),
                    SelectableText(
                      'or',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    SizedBox(
                      width: _mainWidth * 0.015,
                    ),
                    GestureDetector(
                      onTap: () {
                        urlLaunch( webUrl: 'https://happilo.com/');
                      },
                      child: Text(
                        'Visit our store',
                        style: TextStyle(color: Colors.blue.shade400, fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: _mainHeight * 0.05,
                ),
                SelectableText(
                  'Order summary',
                  style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: _mainHeight * 0.02,
                ),
                Row(
                  children: [
                    Container(
                        height: _mainHeight * 0.06,
                        width: _mainWidth * 0.12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey.shade400)),
                        child: Icon(Icons.celebration)),
                    SizedBox(
                      width: _mainWidth * 0.03,
                    ),
                    Container(
                      width: _mainWidth * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText(
                            'Happilo 100% Natural Premium California Almonds × 1',
                            style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w600),
                          ),
                          SelectableText(
                            '200g',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
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
                SizedBox(
                  height: _mainHeight * 0.01,
                ),
                Divider(),
                SizedBox(
                  height: _mainHeight * 0.02,
                ),
                Container(
                  padding: EdgeInsets.only(left: _mainWidth * 0.5),
                  child: Column(
                    children: [
                      getRowView(title: 'Discount  PREPAID', value: '-₹18.75'),
                      SizedBox(
                        height: _mainHeight * 0.01,
                      ),
                      getRowView(title: 'Subtotal', value: '₹256.25'),
                      SizedBox(
                        height: _mainHeight * 0.01,
                      ),
                      getRowView(title: 'Shipping', value: '₹100.00'),
                      SizedBox(
                        height: _mainHeight * 0.01,
                      ),
                      getRowView(title: 'Taxes', value: '₹0.00'),
                      SizedBox(
                        height: _mainHeight * 0.015,
                      ),
                      Divider(),
                      SizedBox(
                        height: _mainHeight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SelectableText('Total',
                              style: TextStyle(color: Colors.grey.shade700, fontSize: 16, fontWeight: FontWeight.w600)),
                          SelectableText('₹356.25',
                              style: TextStyle(color: Colors.black87, fontSize: 25, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      SizedBox(
                        height: _mainHeight * 0.005,
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SelectableText('You saved ₹18.75',
                              style: TextStyle(color: Colors.grey.shade700, fontSize: 16, fontWeight: FontWeight.w600))),
                    ],
                  ),
                ),
                SizedBox(
                  height: _mainHeight * 0.04,
                ),

                const SelectableText('Customer information',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: _mainHeight * 0.02,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _mainWidth * 0.45,
                      child: getAddressView(
                          typeOfAddress: 'Shipping address',
                          address: [
                            "Sparks .",
                            'SparksMonk Pvt Ltd, 649, 13th Cross, 27th Main, HSR Sector 1, Bangalore 560102',
                            '560102 BANGALORE KA',
                            'India'
                          ],
                          methodKey: 'Shipping method',
                          methodValue: 'Standard'),
                    ),
                    SizedBox(width: _mainWidth*0.01,),
                    SizedBox(
                      width: _mainWidth * 0.45,
                      child: getAddressView(
                          typeOfAddress: 'Billing address',
                          address: [
                            "Sparks .",
                            'SparksMonk Pvt Ltd, 649, 13th Cross, 27th Main, HSR Sector 1, Bangalore 560102',
                            '560102 BANGALORE KA',
                            'India'
                          ],
                          methodKey: 'Payment method',
                          methodValue: 'Shopflo'),
                    ),
                  ],
                ),
                SizedBox(
                  height: _mainHeight * 0.04,
                ),
                Divider(),
                SizedBox(
                  height: _mainHeight * 0.01,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'If you have any questions, reply to this email or contact us at',
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey,fontSize: 13),
                    ),
                    TextSpan(
                        text: ' care@happilo.com',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.blue.shade400,fontSize: 14),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchDefaultEmailClient('care@happilo.com');
                        },
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getAddressView(
      {required String typeOfAddress,
      required List<String> address,
      required String methodKey,
      required String methodValue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(typeOfAddress,style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black87,
          fontSize: 16
        ),),
        SizedBox(
          height: _mainHeight*0.01,
        ),
        SelectableText(address[0],style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: 16
        ),),
        SelectableText(address[1],style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: 16
        ),),
        SelectableText(address[02],style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: 16
        ),),
        SelectableText(address[03],style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: 16
        ),),
        SizedBox(
          height: _mainHeight * 0.02,
        ),
        SelectableText(methodKey,style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            fontSize: 16
        ),),
        SizedBox(
          height: _mainHeight * 0.005,
        ),
        SelectableText(methodValue,style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: 16
        ),),
      ],
    );
  }

  Widget getRowView({required String title, required String value}) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: SelectableText(
            title,
            style: TextStyle(color: Colors.grey.shade700, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          width: _mainWidth * 0.1,
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: SelectableText(value,
                style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
                textAlign: TextAlign.end),
          ),
        ),
      ],
    );
  }

}
