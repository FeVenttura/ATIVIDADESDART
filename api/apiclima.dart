import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> buscarClima(String cidade, String apiKey) async {
  final url = Uri.parse('http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$cidade&lang=pt');
  
  final resposta = await http.get(url).timeout(Duration(seconds: 5));

  if (resposta.statusCode == 200) {
    return jsonDecode(resposta.body);
  } else {
    throw Exception('Falha na requisição. Código: ${resposta.statusCode}');
  }
}

void main() async {
  final apiKey = 'cde7421c955240d29e7233750261103';

  while (true) {
    stdout.write('\nDigite o nome da cidade (ou "sair" para encerrar): ');
    final entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().toLowerCase() == 'sair') {
      print('Encerrando...');
      break;
    }

    final cidade = entrada.trim();

    if (cidade.isEmpty) {
      continue;
    }

    try {
      final dados = await buscarClima(cidade, apiKey);

      final local = dados['location']['name'];
      final estado = dados['location']['region'];
      final temp = dados['current']['temp_c'];
      final condicao = dados['current']['condition']['text'];

      print('\n--- RESULTADO ---');
      print('Local: $local, $estado');
      print('Temperatura: $temp°C');
      print('Condição: $condicao');

    } on TimeoutException {
      print('\nErro: Tempo limite de conexão excedido.');
    } catch (e) {
      print('\nErro: Não foi possível buscar os dados para a cidade "$cidade".');
    }
  }
}