import 'package:flutter/material.dart';
import 'detail_list.dart';
import 'display_list.dart';
import 'listdata.dart';

class Home extends StatelessWidget {
  final ListData user = emptyUser[0];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
              children:<Widget> [
                const Expanded(
                    child: DisplayList()
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: FloatingActionButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                        return FormDetail(user: user);
                      }));
                    },
                    child: const Icon(Icons.add, color: Colors.white, size: 20,
                      ),
                    ),
                  ),
                ),
              ],
          ),
      ),
    );
  }
}