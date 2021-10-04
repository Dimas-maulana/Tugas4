import 'package:flutter/material.dart';
import 'detail_list.dart';
import 'listdata.dart';

class DisplayList extends StatelessWidget {

  const DisplayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemBuilder: (context, index){
          final ListData user = userList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return FormDetail(user: user);
              }));
            },
            child: Card(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget>[
                            Image.network(user.photo, width: 150, height: 200,)
                          ]
                        )
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget>[
                            Text(user.name, style: const TextStyle(fontSize: 28,),),
                            Text("Role: "+user.role, style: const TextStyle(fontSize: 22),),
                            Text("Nationality: "+user.nationality, style: const TextStyle(fontSize: 22),),
                            Text("Gender: "+user.gender, style: const TextStyle(fontSize: 22),),
                          ]
                        ),
                      ),

                    ],
                ),
            ),
          );
        },
        itemCount: userList.length,
    );
  }
}