import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'textfield_form.dart';
import 'listdata.dart';

class FormDetail extends StatelessWidget {
  final ListData user;

  const FormDetail({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Center(
                  child: Image.network(user.photo, width: 150, height: 200,)
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextForm(
                  value: user.name,
                  label:"Name :",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextForm(
                  value: user.role,
                  label:"Role :",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextForm(
                  value: user.gender,
                  label:"Gender :",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextForm(
                  value: user.nationality,
                  label:"Nationality :",
                ),
              ),
              Center(
                child: ElevatedButton(
                      child: const Text("Kembali"),
                      onPressed: (){
                        Navigator.pop(context);
                        },
                  ),
              ),
              Center(
                child: ElevatedButton(
                    child: const Text('Keluar'),
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}