import 'package:flutter/material.dart';
import 'package:shopping_cart/screens/happilo_mailbox_screen.dart';
import 'package:shopping_cart/screens/hopscotch_mailbox_screen.dart';
import 'package:shopping_cart/screens/noise_mailbox_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



class MyHomePage extends StatelessWidget {
  var _mainHeight;
  var _mainWidth;

  @override
  Widget build(BuildContext context) {
    _mainHeight = MediaQuery.of(context).size.height;
    _mainWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Mailbox HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: _mainWidth*0.6,
              height: _mainHeight*0.06,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HappiloMailboxScreen(),));
                  },
                  child: Text('Go to Happilo Mailbox')
              ),
            ),
            SizedBox(height: _mainHeight*0.02,),
            SizedBox(
              width: _mainWidth*0.6,
              height: _mainHeight*0.06,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HopscotchMailboxScreen(),));
                  },
                  child: Text('Go to Hopscotch Mailbox')
              ),
            ),
            SizedBox(height: _mainHeight*0.02,),
            SizedBox(
              width: _mainWidth*0.6,
              height: _mainHeight*0.06,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NoiseMailboxScreen(),));
                  },
                  child: Text('Go to Noise Mailbox')
              ),
            ),
          ],
        ),
      ),
    );
  }
}
