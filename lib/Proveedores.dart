import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proveedores Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProveedoresPage(),
    );
  }
}

class ProveedoresPage extends StatefulWidget {
  const ProveedoresPage({Key? key}) : super(key: key);

  @override
  State<ProveedoresPage> createState() => _ProveedoresPageState();
}

class _ProveedoresPageState extends State<ProveedoresPage> {
  var idproveedorText = TextEditingController();
  var nombreText = TextEditingController();
  var contactoText = TextEditingController();
  var telefonoText = TextEditingController();
  var direccionText = TextEditingController();
  var emailText = TextEditingController();
  var tipo_productoText = TextEditingController();
  var comentariosText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Registro del Proveedor",
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
              controller: idproveedorText,
              decoration: InputDecoration(
                labelText: 'idProveedor',
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
              controller: contactoText,
              decoration: InputDecoration(
                labelText: 'Contacto',
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
              controller: direccionText,
              decoration: InputDecoration(
                labelText: 'Direccion',
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
              controller: tipo_productoText,
              decoration: InputDecoration(
                labelText: 'Tipo_Producto',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: comentariosText,
              decoration: InputDecoration(
                labelText: 'Comentarios',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String idProveedor = idproveedorText.text;
                String nombre = nombreText.text;
                String contacto = contactoText.text;
                String telefono = telefonoText.text;
                String direccion = direccionText.text;
                String email = emailText.text;
                String tipo__producto = tipo_productoText.text;
                String comentarios = comentariosText.text;

                Navigator.pop(context);
              },
              child: Text('Registrar Proveedor',
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
