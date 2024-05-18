import 'package:flutter/material.dart';
import 'Proveedores.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sucursal Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SucursalPage(),
    );
  }
}

class SucursalPage extends StatefulWidget {
  const SucursalPage({Key? key}) : super(key: key);

  @override
  State<SucursalPage> createState() => _SucursalPageState();
}

class _SucursalPageState extends State<SucursalPage> {
  var idsucursalText = TextEditingController();
  var nombreText = TextEditingController();
  var direccionText = TextEditingController();
  var ciudadText = TextEditingController();
  var paisText = TextEditingController();
  var numero_empleadosText = TextEditingController();
  var horarioText = TextEditingController();
  var gerenteText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Registro del Sucursal",
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
              controller: idsucursalText,
              decoration: InputDecoration(
                labelText: 'idSucursal',
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
              controller: direccionText,
              decoration: InputDecoration(
                labelText: 'Direccion',
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
              controller: paisText,
              decoration: InputDecoration(
                labelText: 'Pais',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: numero_empleadosText,
              decoration: InputDecoration(
                labelText: 'Numero_Empleados',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: horarioText,
              decoration: InputDecoration(
                labelText: 'Horario',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: gerenteText,
              decoration: InputDecoration(
                labelText: 'Gerente',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String idSucursal = idsucursalText.text;
                String nombre = nombreText.text;
                String direccin = direccionText.text;
                String ciudad = ciudadText.text;
                String pais = paisText.text;
                String numero_empleados = numero_empleadosText.text;
                String horario = horarioText.text;
                String gerente = gerenteText.text;

                Navigator.pop(context);
              },
              child: Text('Registrar Sucursal',
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
