import 'package:Jurado1079/Empleado.dart';
import 'package:Jurado1079/Productos.dart';
import 'package:Jurado1079/Proveedores.dart';
import 'package:Jurado1079/Sucursal.dart';
import 'package:flutter/material.dart';
import 'Cliente.dart'; // Importamos Cliente.dart

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Innova Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(), // Cambiamos MyHomePage por ClientePage
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  var _numberForm = GlobalKey<FormState>();
  RegExp _digitRegex = RegExp("[0-9]+");
  bool isValidForm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        title: Text(
          "Bienvenido",
          style: TextStyle(color: Color(0xffdedede)),
        ),
        iconTheme: IconThemeData(
            color: Colors.white), // Cambiar el color de los iconos al blanco
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      'data:image/jpeg;base64,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', // Reemplaza con tu enlace de imagen
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 36,
                    left: 16,
                    child: Text(
                      'Innovasport',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Text(
                      'a.21308051281079@cbtis128.edu.mx',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'data:image/png;base64,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'), // Reemplaza con tu enlace de imagen
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Tabla Cliente'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClientePage()),
                );
              },
            ),
            ListTile(
              title: Text('Tabla Producto'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductoPage()),
                );
              },
            ),
            ListTile(
              title: Text('Tabla Empleado'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmpleadoPage()),
                );
              },
            ),
            ListTile(
              title: Text('Tabla Sucursal'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SucursalPage()),
                );
              },
            ),
            ListTile(
              title: Text('Tabla Proveedor'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProveedoresPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailText,
                decoration: InputDecoration(
                  hintText: "Ingrese Email Aquí..",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.white,
                          width: 2)), // Cambié el color a blanco
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.orange,
                    ),
                    onPressed: () {},
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.orange,
                  ),
                ),
              ),
              Container(
                height: 11,
              ),
              TextField(
                controller: passText,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "Ingrese la contraseña aquí..",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            BorderSide(color: Colors.deepOrange, width: 2))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                    onPressed: () {
                      // Redirigir a Cliente.dart al presionar el botón "Login
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: Text("Login",
                        style: TextStyle(color: Color(0xffffffff)))),
              ),
              Form(
                key: _numberForm,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (inputValue) {
                        if (inputValue!.isEmpty ||
                            !_digitRegex.hasMatch(inputValue)) {
                          return "Ingrese el número";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      validator: (inputValue) {
                        if (inputValue!.isEmpty) {
                          return "Complete antes";
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_numberForm.currentState!.validate()) {
                          setState(() {
                            isValidForm = true;
                          });
                        } else {
                          setState(() {
                            isValidForm = false;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary:
                            Color(0xff000000), // Mismo color que el botón Login
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Cuadrado
                        ),
                        padding: EdgeInsets.only(
                            top: 15.0), // Espacio de 15px hacia abajo
                      ),
                      child: Text(
                        "Verificar Número",
                        style: TextStyle(
                          color: Colors
                              .white, // Mismo color que el texto del botón Login
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
