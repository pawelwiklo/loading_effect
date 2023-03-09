import 'package:flutter/material.dart';
import 'package:learning_nice_loading_effect/screens/components/home_screen_body.dart';
import 'package:learning_nice_loading_effect/screens/components/loading_home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool _isLoading;

  @override
  void initState() {
    super.initState();

    _isLoading = true;

    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'News App',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: _isLoading ? LoadingHomeScreenBody() : HomeScreenBody(),
    );
  }
}
