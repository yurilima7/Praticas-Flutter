import 'package:flutter/material.dart';
import 'package:sales_manager/screens/adicionar_cliente.dart';
import 'package:sales_manager/screens/adicionar_pagamentos.dart';
import 'package:sales_manager/screens/adicionar_produto.dart';
import 'package:sales_manager/screens/cliente_existente.dart';
import 'package:sales_manager/screens/clientes.dart';
import 'package:sales_manager/screens/configuracao.dart';
import 'package:sales_manager/screens/criar_conta.dart';
import 'package:sales_manager/screens/dados.dart';
import 'package:sales_manager/screens/editar_cliente.dart';
import 'package:sales_manager/screens/editar_compra.dart';
import 'package:sales_manager/screens/editar_perfil.dart';
import 'package:sales_manager/screens/ficha_cliente.dart';
import 'package:sales_manager/screens/login.dart';
import 'package:sales_manager/screens/opcao_venda.dart';
import 'package:sales_manager/screens/pagamento.dart';
import 'package:sales_manager/screens/principal.dart';
import 'package:sales_manager/screens/produtos_pagos.dart';
import 'package:sales_manager/screens/seleciona_compra.dart';

main() => runApp(SalesManager());

class SalesManager extends StatelessWidget {
  SalesManager({Key? key}) : super(key: key);

  final ThemeData tema = ThemeData(); // adicionando o tema da aplicação

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: const Color(0xFF6D3F8C),
          secondary: const Color(0xFFE7DCF2),
        ),
        scaffoldBackgroundColor: const Color(0xFFE7DCF2),
      ),
      initialRoute: '/login',
      routes: {
        '/login' : (context) => const Login(),
        '/criarConta' : (context) => const CriarConta(),
        '/principal' : (context) => const Principal(),
        '/opcaoDeVenda' : (context) => const OpcaoVenda(),
        '/addCliente' : (context) => const AdicionarCliente(),
        '/addProduto' :(context) => const AdicionarProduto(),
        '/clientes' : (context) => const Clientes(),
        '/fichaCliente' : (context) => const FichaCliente(),
        '/dados' : (context) => const Dados(),
        '/addPagamento' : (context) => const AdicionarPagamento(),
        '/selecionaCompra' : (context) => const SelecionaProduto(),
        '/pagamento' : (context) => const Pagamento(),
        '/clienteExistente' :(context) => const ClienteExistente(),
        '/configuracao' : (context) => const Configuracao(),
        '/editarPerfil' : (context) => const EditarPerfil(),
        '/editarCliente' : (context) => const EditarCliente(),
        '/editarProduto' : (context) => const EditarCompra(),
        '/pagos' : (context) => const Pagos(),
      },
    );
  }
}