import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _firstname=TextEditingController();
  TextEditingController _lastname=TextEditingController();
  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();
  TextEditingController _repassword=TextEditingController();
  
  bool isObs = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Form(
              key: _formkey,
              child: Column(
            children: [
              TextFormField(
                controller: _firstname,
                decoration: InputDecoration(
                  label: Text('First Name'),
                  hintText: 'First Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  // suffix: Icon(Icons.drive_file_rename_outline)
                  // prefix: Icon(Icons.account_box)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter first name';
                  }
                },
              ),
              Gap(20),
              TextFormField(
                controller: _lastname,
                decoration: InputDecoration(
                  label: Text('Last Name'),
                  hintText: 'Last Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  // suffix: Icon(Icons.drive_file_rename_outline)
                  // prefix: Icon(Icons.account_box)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter Last name';
                  }
                },
              ),
              Gap(20),
              TextFormField(
                controller: _email,
                decoration: InputDecoration(
                  label: Text('Email'),
                  hintText: 'Email',
                  border: OutlineInputBorder(borderRadius: 
                  BorderRadius.circular(20))
                ),
                validator: (value){
                  if (value!.isEmpty){
                    return "Please enter Email";
                  }
                  if(!value.contains('@'));

                }

              ),
              Gap(20),
              TextFormField(
                controller: _password,
                obscureText: isObs,
                decoration: InputDecoration(
                  label: Text("Password"),
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius:
                  BorderRadius.circular(20),
                  ),
                  suffix: IconButton(onPressed: (){
                    isObs= !isObs;
                    setState(() {
        
                    });
                  },
                      icon: Icon(Icons.visibility))
                ),
                validator: (value){
                  if (value !.isEmpty){
                    return 'Please enter Password';
                  }

                },
              ),
              Gap(20),
              TextFormField(
                controller: _repassword,
                obscureText: isObs,
                decoration: InputDecoration(
                    label: Text("Re-password"),
                    hintText: "Re-password",
                    border: OutlineInputBorder(borderRadius:
                    BorderRadius.circular(20),
                    ),
                    suffix: IconButton(onPressed: (){
                      isObs= !isObs;
                      setState(() {
        
                      });
                    },
                        icon: Icon(Icons.visibility))
                ),
                validator: (value){
                  if (value !.isEmpty){
                    return 'Please  Re-enter your Password';
                  }
                  if(value!= _password.text.toString()){
                    return 'Passwword does not match';
                  }
                },
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width*0.8,
                color: Colors.blue,
                child: Text('Sign Up'),
        
                onPressed: (){
                  _formkey.currentState!.validate();

                },)
            ],
          ))
        
          ),
      )

    );
  }
}
