Map<String, String> cache = {'tema': 'escuro'};

Future<String?> buscarDaAPI(String chave) async {
  await Future.delayed(Duration(seconds: 2));

  Map<String, String> dbFake = {'idioma': 'pt-BR', 'notificacoes': 'ativado'};

  return dbFake[chave];
}

Future<String?> buscarConfiguracao(String chave) async {
  return cache[chave] ?? await buscarDaAPI(chave);
}

void main() async {
  String? tema = await buscarConfiguracao('tema');
  print(tema?.toUpperCase());

  String idioma = (await buscarConfiguracao('idioma'))!;
  print(idioma);

  String volume = await buscarConfiguracao('volume') ?? '100';
  print(volume);
}
