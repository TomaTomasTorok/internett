import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'internetconnect.dart';
import 'networkbinding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //Initiate Bindings we have created with GETX
      initialBinding: NetworkBinding() ,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // create an instance
  final GetXNetworkManager _networkManager = Get.find<GetXNetworkManager>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Network Status',style: TextStyle(fontSize: 20),),
            //update the Network State
            GetBuilder<GetXNetworkManager>(builder: (builder)=>
                Text((_networkManager.connectionType == 0 )? 'No Internet' : (_networkManager.connectionType == 1) ? 'You are Connected to Wifi' : 'You are Connected to Mobile Internet',style: TextStyle(fontSize: 30),)),

          ],
        ),
      ),
    );
  }
}