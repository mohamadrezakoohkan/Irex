import 'package:flutter/material.dart';
import 'package:flutter_app/models/currency.dart';
import 'package:flutter_app/networking/services/currenciesService.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Currency> items = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("IREX Flutter Demo"),
        ),
        body: Center(child: getHomeScreenBody()));
  }

  Widget getHomeScreenBody() {
    if (items.isEmpty) {
      return Center(child: CircularProgressIndicator());
    } else {
      return ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int position) {
            return getHomeRow(position);
          });
    }
  }

  Widget getHomeRow(int position) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "/details"),
      child: Container(
          child: Column(
        children: [
          Stack(
            children: [
              Image.network(items[position].symbol),
              Text((items[position]).name)
            ],
          ),
        ],
      )),
    );
  }

  Future<void> loadData() async {
    try {
      final data = await currencies();
      setState(() {
        items = data;
      });
    } catch (e) {
      print(e);
    }
  }
}
