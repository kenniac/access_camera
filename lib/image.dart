import 'package:flutter/material.dart';

class Imagen extends StatefulWidget {
  @override
  _ImagenState createState() => _ImagenState();
  
}

class _ImagenState extends State<Imagen> {

  opciones(context){
    showDialog(
      context: context, 
      builder: (BuildContext context){
        return AlertDialog(
       contentPadding: EdgeInsets.all(0),
       content: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: (){

              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1, color: Colors.grey))
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text('Tomar una foto', style: TextStyle(
                        fontSize: 16,
                      ),
                      ),
                    ),
                    Icon(Icons.camera_alt, color: Colors.blue,)
                  ],
                ),
              ),
            )
          ],
        )),
        );
      }
    );  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seleccione una imagen'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: (){
                  opciones(context);
                  }, 
                  child: Text('Seleccione una imagen'),
                  ),
                  SizedBox(height: 30,),
                  Center()
              ],
            ),
            )
        ],
      ),
    );
  }

}
