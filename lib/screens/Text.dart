import 'package:flutter/material.dart';

void main() {}

class Textgun extends StatelessWidget {
  const Textgun({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            elevation: 30,
        title: const Text("A Weapon"), 
        centerTitle: true,
        backgroundColor: Colors.red,
        leading:IconButton(onPressed: (){}, icon: const Icon(Icons.menu,size:30,color:Color.fromARGB(255, 30, 2, 0))),
        
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.message,size:30 ,color: Colors.black,)),
          
          
          
          IconButton(onPressed: (){}, icon: Icon(Icons.search,size:30 ,color: Colors.black)
          )          
          
          
          ],
      ),
     floatingActionButton: FloatingActionButton(
    onPressed: (){},
    child: Icon(Icons.add),
     ),

      body: const Text('مرحبا لغة فلاتر',
      
    maxLines:1 ,
    style: TextStyle(backgroundColor:Color.fromARGB(255, 255, 255, 255),fontSize: 33,color: Colors.blue,
    decoration: TextDecoration.underline,
    fontStyle:FontStyle.italic ,
    fontWeight: FontWeight.bold,
    //height: 10,
   letterSpacing: 2,
   wordSpacing:4 ,
  
  
    ),
    overflow: TextOverflow.ellipsis,
    //textAlign: TextAlign.right,
    textDirection:TextDirection.rtl ,
  
      ),
    ); 
  }
}
 