import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Link opener",
              style: TextStyle(
                color: Colors.white,
              )),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Column(
              children: [
                Link(
                  target: LinkTarget.self,
                  uri: Uri.parse(
                      "https://github.com/PrinceJohn279/hngFirstTask/tree/main/hng_tast1"),
                  builder: (BuildContext context,
                          Future<void> Function()? followLink) =>
                      ElevatedButton(
                    onPressed: followLink,
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.deepPurpleAccent)),
                    child: Text(
                      "Open Github",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Link(
                  target: LinkTarget.self,
                  uri: Uri.parse("http://hng.tech/hire/flutter-developers"),
                  builder: (BuildContext context,
                          Future<void> Function()? followLink) =>
                      TextButton(
                    onPressed: followLink,
                    child: Text(
                      "Open HNG hire pages",
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
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
}
