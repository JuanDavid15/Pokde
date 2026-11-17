import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _usuarioController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _ocultarPassword = true;
  final List<Map<String, String>> usuarios = [
    {
      'name': 'Juan David',
      'password': '20060512Juan',
    },
    {
      'name': 'Anabell Alejandra',
      'password': 'Ana3112@',
    },
  ];

  @override
  void dispose() {
    _usuarioController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _iniciarSesion() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context,"home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 250),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 24,
                children: [
                  Icon(Icons.lock_outline, size: 72, color: Colors.red[600]),
                  Text(
                    "Iniciar Sesión",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: _usuarioController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Usuario",
                      prefixIcon: Icon(Icons.person_outline),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Por favor ingresa tu usuario";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: _ocultarPassword,
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) => _iniciarSesion(),
                    decoration: InputDecoration(
                      labelText: "Contraseña",
                      prefixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _ocultarPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _ocultarPassword = !_ocultarPassword;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Por favor ingresa tu contraseña";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton.icon(
                      onPressed: _iniciarSesion,
                      icon: Icon(Icons.login),
                      label: Text("Entrar"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
