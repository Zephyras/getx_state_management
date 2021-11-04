import 'package:flutter/material.dart';
import 'package:getx/feature/state/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  Widget _button(context) {
    return ElevatedButton(
        onPressed: () {
          Provider.of<CountControllerWithProvider>(context, listen: false)
              .increase();
        },
        child: Text("+", style: TextStyle(fontSize: 30)));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("PROVIDER", style: TextStyle(fontSize: 30)),
          // Text(
          //   "${Provider.of<CountControllerWithProvider>(context).count}",
          //   style: TextStyle(fontSize: 50),
          // ),

          Consumer<CountControllerWithProvider>(builder: (_, snapshot, child) {
            return Text(
              "${snapshot.count}",
              style: TextStyle(fontSize: 50),
            );
          }),
          //Text("0", style: TextStyle(fontSize: 30)),
          _button(context),
        ],
      ),
    );
  }
}
