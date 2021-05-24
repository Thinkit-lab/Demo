import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchTextField = TextEditingController();

  @override
  void initState() {
    _searchTextField.text = "Search";
    super.initState();
  }

  @override
  void dispose() {
    _searchTextField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /* In this section we will be testing your skills with network and local storage. You need to fetch data from any open source api from the internet. 
             E.g: 
             https://any-api.com/
             https://rapidapi.com/collection/best-free-apis?utm_source=google&utm_medium=cpc&utm_campaign=Beta&utm_term=%2Bopen%20%2Bsource%20%2Bapi_b&gclid=Cj0KCQjw16KFBhCgARIsALB0g8IIV107-blDgIs0eJtYF48dAgHs1T6DzPsxoRmUHZ4yrn-kcAhQsX8aAit1EALw_wcB
             Implement setup for network. You are free to use package such as Dio, Choppper or Http can ve used as well.
             Upon fetching the data try to store thmm locally. You can use any local storeage. 
             Upon Search the data should be filtered locally and should update the UI.
            */

            CupertinoSearchTextField(
              controller: _searchTextField,
            ),
            Spacer(),
            Text(
              "Call any api you like from open apis and show them in a list. ",
              textAlign: TextAlign.center,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
