import 'package:flutter/material.dart';
import 'Productos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cliente Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClientePage(),
    );
  }
}

class ClientePage extends StatefulWidget {
  const ClientePage({Key? key}) : super(key: key);

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
  var idclienteText = TextEditingController();
  var nombreText = TextEditingController();
  var apellidoText = TextEditingController();
  var edadText = TextEditingController();
  var emailText = TextEditingController();
  var telefonoText = TextEditingController();
  var ciudadText = TextEditingController();
  var direccionText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Registro del Cliente",
          style: TextStyle(color: Color(0xffffffff)),
        ),
        centerTitle: true, // Centra el título
        automaticallyImplyLeading: false, // Deshabilita la flecha de retroceso
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10.0),
            TextFormField(
              controller: idclienteText,
              decoration: InputDecoration(
                labelText: 'idCliente',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            TextFormField(
              controller: nombreText,
              decoration: InputDecoration(
                labelText: 'Nombre',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: apellidoText,
              decoration: InputDecoration(
                labelText: 'Apellido',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: edadText,
              decoration: InputDecoration(
                labelText: 'Edad',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: emailText,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: telefonoText,
              decoration: InputDecoration(
                labelText: 'Telefono',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: ciudadText,
              decoration: InputDecoration(
                labelText: 'Ciudad',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: direccionText,
              decoration: InputDecoration(
                labelText: 'Direccion',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String idCliente = idclienteText.text;
                String nombre = nombreText.text;
                String apellido = apellidoText.text;
                String edad = edadText.text;
                String email = emailText.text;
                String telefono = telefonoText.text;
                String ciudad = ciudadText.text;
                String direccion = direccionText.text;

                // Redirigir a la página principal al presionar el botón "Registrar Cliente"
                Navigator.pop(context);
              },
              child: Text('Registrar Cliente',
                  style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
