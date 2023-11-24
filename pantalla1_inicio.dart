import 'package:flutter/material.dart';
import 'package:flutter1/widgets/pantalla2_registrar.dart';
import 'package:flutter1/widgets/pantalla3_usuario.dart';

class Pantalla1_Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //configuración de la barra superior de la aplicación
      appBar: AppBar(
        backgroundColor: Colors.grey[300],//color fondo
        title: Center(
          child: Text(
            'MediCareTracker',//texto centralizado
            style: TextStyle(
              fontSize: 24,
              color: Colors.pink,//color del texto
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily: 'Arial',
            ),
          ),
        ),
      ),

      // estructura de la interfaz de usuario 
      body: Center(//todo centralizado
        child: SingleChildScrollView(//para no me salir la barra amarilla y negro
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    'Usuário',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 8),
                  Container(//contenedor abajo del texto usuario
                    width: 200,
                    height: 40,
                    color: Colors.grey[300],
                    child: TextField(
                        // Puedo añadir controladores y otras propiedades al TextField según sea necesario.
                        ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    'Contraseña',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 8),
                  Container(//contenedor abajo del texto contraseña
                    width: 200,
                    height: 40,
                    color: Colors.grey[300],
                    child: TextField(
                        // Puedo añadir controladores y otras propiedades al TextField según sea necesario.
                        ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Container(
                width: 200,
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
                    // Navegar para a tela Pantalla3_usuario ao pressionar "ENTRAR"
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pantalla3_usuario(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 164, 216, 240),
                    padding: EdgeInsets.all(16.0),
                  ),
                  child: Text(
                    'ENTRAR',
                    style: TextStyle(
                      color: Color.fromARGB(255, 33, 33, 214),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sans-serif',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
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
                        builder: (context) => Pantalla2_Registrar(),
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
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sans-serif',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '¿No tienes cuenta? Pulse "REGISTRAR"',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
