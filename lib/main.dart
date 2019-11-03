import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Add Click Event to Image',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ImageClickEvent(),
    );
  }
}

class ImageClickEvent extends StatefulWidget {
  ImageClickEventState createState() => ImageClickEventState();
}

class ImageClickEventState extends State<ImageClickEvent> {
  int countValue = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Click Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
                child: Center(
                  child: Text(
                    countValue.toString(),
                    style: TextStyle(fontSize: 25.0),
                  ),
                )),
            GestureDetector(
              onTap: () {
                //Insert event to be fired up when button is clicked here
                //in this case, this increments our `countValue` variable by one.
                setState(() => countValue += 1);
              },
              child: CircleAvatar(backgroundImage: ExactAssetImage('assets/umbrella.jpg'),
              minRadius: 80,
              maxRadius: 120,
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
