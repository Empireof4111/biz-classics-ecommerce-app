import 'package:flutter/material.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});
  static String routeName = "/My-Order";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Orders',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          leading: GestureDetector(
            onTap: () => {
              Navigator.pop(
                context,
              )
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(text: 'Dog'),
                Tab(text: 'Cat'),
                Tab(text: 'Hen'),
                TabBarView(children: [
                  Text('First tab'),
                  Text('Second tab'),
                  Text('Third tab'),
                ])
              ]),
            ),
          ),
        ));
  }
}
