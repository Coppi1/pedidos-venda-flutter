import 'package:flutter/material.dart';
import 'package:projeto_pedido_vendas/pages/pedido_cadastro.dart';
import 'package:projeto_pedido_vendas/util/initialize_database.dart';
import 'package:projeto_pedido_vendas/util/initialize_database.dart';
import 'pages/login.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDatabase();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Pedido Vendas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(), // Substitua PedidoCadastro pela LoginPage
    );
  }
}
