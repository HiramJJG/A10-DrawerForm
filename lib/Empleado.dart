import 'package:flutter/material.dart';
import 'Sucursal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empleado Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EmpleadoPage(),
    );
  }
}

class EmpleadoPage extends StatefulWidget {
  const EmpleadoPage({Key? key}) : super(key: key);

  @override
  State<EmpleadoPage> createState() => _EmpleadoPageState();
}

class _EmpleadoPageState extends State<EmpleadoPage> {
  var idempleadoText = TextEditingController();
  var nombreText = TextEditingController();
  var apellidoText = TextEditingController();
  var telefonoText = TextEditingController();
  var salarioText = TextEditingController();
  var fecha_contratacionText = TextEditingController();
  var correoText = TextEditingController();
  var curriculumText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Registro del Empleado",
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
              controller: idempleadoText,
              decoration: InputDecoration(
                labelText: 'idEmpleado',
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
              controller: telefonoText,
              decoration: InputDecoration(
                labelText: 'Telefono',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: salarioText,
              decoration: InputDecoration(
                labelText: 'Salario',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: fecha_contratacionText,
              decoration: InputDecoration(
                labelText: 'fecha_contratacion',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: correoText,
              decoration: InputDecoration(
                labelText: 'Correo',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: curriculumText,
              decoration: InputDecoration(
                labelText: 'Curriculum',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String idempleado = idempleadoText.text;
                String nombre = nombreText.text;
                String apellido = apellidoText.text;
                String telefono = telefonoText.text;
                String salario = salarioText.text;
                String fecha_contratacion = fecha_contratacionText.text;
                String correo = correoText.text;
                String curriculum = curriculumText.text;

                Navigator.pop(context);
              },
              child: Text('Registrar Empleado',
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
