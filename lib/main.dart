import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Olá Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
 const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(
        
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.account_circle,size:100,color: Colors.blue, ),
              const SizedBox(width:20, height:50,),
              TextFormField(decoration: const InputDecoration(hintText: "Usuário",prefixIcon:Icon(Icons.person,color: Colors.blueAccent,
               )),),
              
              TextFormField(obscureText: true,decoration: const InputDecoration(hintText:"Senha" ,prefixIcon:Icon(Icons.key,
               color: Colors.blue,),suffixIcon: Icon(Icons.visibility,color: Colors.blue,) ),),
              const SizedBox(width:20, height:32,),
              ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.purple,fixedSize: const Size(450,70 )), child: Text("Login".toUpperCase(), style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold),))

            ],
          ),
        ),
      ),
       
    );
  }
}
