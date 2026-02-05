import 'package:flutter/material.dart';
import 'package:flutter_dio/storage/storage_helper.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Location')),
      body: Padding(
        padding:EdgeInsets.all(10),
        child:Column(children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Enter Location"),
                  onChanged: (val){
                
                  },
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 30,
                  width:30,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.location_on,color: Colors.white,size: 20,) ,
                ),
              )
            ],
          ),
          ElevatedButton(onPressed: (){}, child: Text("Submit")),
          
        ],)
      ),
    );
  }
}
