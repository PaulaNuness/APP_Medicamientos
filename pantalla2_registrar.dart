import 'package:flutter/material.dart';
import 'package:flutter1/widgets/Registro_hecho.dart';


class Pantalla2_Registrar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //configuración de la barra superior de la aplicación
        appBar: AppBar(
          backgroundColor: Colors.grey[300], // Cor de fundo cinza
          title: Center(
            child: Text(
              'Hola, bienvenido.',
              style: TextStyle(
                fontSize: 24,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Arial',
              ),
            ),
          ),
        ),

        // estructura de la interfaz 
        body: Center(
          child: SingleChildScrollView(//para no me salir la barra amarilla y negro
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10), // Reduzi a altura do primeiro SizedBox
                Column(
                  children: [
                    Text(
                      'Nombre',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 4), //distancia entre contenedor e nombre
                    Container(
                      width: 250,//largura do contenedor
                      height: 40,
                      color: Colors.grey[300],
                      child: TextField(
                        // Puedo añadir controladores y otras propiedades al TextField según sea necesario.
                      ),
                    ),
                  ],
                ),
          
                SizedBox(height: 30), // Reduzi a altura do terceiro SizedBox
                Column(
                  children: [
                    Text(
                      'Contraseña',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 4),
                    Container(
                      width: 250,//largura do contenedor
                      height: 40,
                      color: Colors.grey[300],
                      child: TextField(
                        // Puedo añadir controladores y otras propiedades al TextField según sea necesario.
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30), // Reduzi a altura do quarto SizedBox
                Column(
                  children: [
                    Text(
                      'Fecha Nacimiento',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 4),
                    Container(
                      width: 250,//largura do contenedor
                      height: 40,
                      color: Colors.grey[300],
                      child: TextField(
                        // Puedo añadir controladores y otras propiedades al TextField según sea necesario.
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30), // Reduzi a altura do quinto SizedBox
                Column(
                  children: [
                    Text(
                      'Sexo',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 4),
                    Container(
                      width: 250,//largura do contenedor
                      height: 40,
                      color: Colors.grey[300],
                      child: TextField(
                        // Puedo añadir controladores y otras propiedades al TextField según sea necesario.
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 90), // distancia entre a contenedor sexo com os botoes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 33, 33, 214),
                            offset: Offset(0.0, 8.0),
                            blurRadius: 12.0,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Voltar para a tela anterior
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 164, 216, 240),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          'SALIR',
                          style: TextStyle(
                            color: Color.fromARGB(255, 33, 33, 214),
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Sans-serif',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 33, 33, 214),
                            offset: Offset(0.0, 8.0),
                            blurRadius: 12.0,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                    // Navegar para a próxima tela ao pressionar "REGISTRAR"
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistroHecho(),
                      ),
                    );
                  },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 164, 216, 240),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          'REGISTRAR',
                          style: TextStyle(
                            color: Color.fromARGB(255, 33, 33, 214),
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Sans-serif',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
