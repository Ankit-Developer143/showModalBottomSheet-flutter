import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0)
                  ),
            ),
            context: context,
            builder: (BuildContext context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.call),
                          title: const Text("Make A call"),
                          onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                       ),
                       ListTile(
                          leading: const Icon(Icons.share),
                          title: const Text("Share"),
                          onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                       ),
                       ListTile(
                          leading: const Icon(Icons.email),
                          title: const Text("Send email"),
                          onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                       ),
                      ],
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
