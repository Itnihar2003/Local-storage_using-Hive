import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var _mybox = Hive.box('mybox');
  void save() {
    _mybox.put(2, 'nihar');
  }

  void read() {
    print(_mybox.get(2));
  }

  void delete() {
    _mybox.delete(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("local storage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: save,
                child: Text("save"),
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: read,
                child: Text("read"),
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: delete,
                child: Text("delete"),
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
