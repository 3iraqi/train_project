import 'package:flutter/material.dart';
class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              const Text(
                "medo",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 100
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}
