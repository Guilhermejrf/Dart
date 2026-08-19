# Atividade pratica - API de clima no Flutter

## Objetivo

Criar um aplicativo Flutter que consulta uma API de clima, recebe a temperatura atual e mostra o resultado na tela.

## Requisitos do aplicativo

- Mostrar o titulo "Clima Atual".
- Mostrar o nome da cidade.
- Ter um botao "Buscar temperatura".
- Consultar uma API publica de clima.
- Ler o JSON recebido da API.
- Mostrar a temperatura atual na tela.
- Mostrar "Carregando..." durante a consulta.
- Mostrar "Erro ao buscar temperatura." se a consulta falhar.

## API indicada

Open-Meteo:

```text
https://api.open-meteo.com/v1/forecast?latitude=-8.05&longitude=-34.88&current=temperature_2m
```

As coordenadas usadas sao de Recife.

## Etapas da atividade

1. Criar a tela do aplicativo com titulo, cidade, botao e espaco para resultado.
2. Consumir a API com o pacote `http`.
3. Tratar a resposta, mostrar carregamento, temperatura ou erro.
4. Criar teste de integracao para verificar resposta da API, temperatura recebida e valor numerico.
5. Criar teste pela interface, clicando no botao e verificando se aparece o simbolo de graus Celsius.
6. Testar falha alterando a URL da API e depois voltar para a URL correta.

## Status atual

- Etapa 1: feita.
- Etapa 2: feita; o pacote `http` foi adicionado e resolvido no lockfile.
- Etapa 3: feita no codigo.
- Etapa 4: feita em `integration_test/weather_api_test.dart`.
- Etapa 5: feita em `integration_test/weather_app_test.dart`.
- Etapa 6: feita com teste de URL incorreta e retorno da URL correta no app.

## Perguntas para responder ao final

1. O que e um teste de integracao?
2. Quais partes do sistema foram integradas nesta atividade?
3. O que aconteceu quando a URL da API foi alterada?
4. Por que nao podemos testar uma temperatura fixa, como 29 graus Celsius?
5. Qual a importancia de testar a comunicacao entre o aplicativo e uma API?

## Respostas finais

1. Teste de integracao e um teste que verifica se partes diferentes do sistema funcionam juntas.
2. Nesta atividade foram integrados o aplicativo Flutter, o codigo Dart, o pacote `http`, a API Open-Meteo, a resposta JSON e a tela que mostra a temperatura.
3. Quando a URL da API foi alterada para uma URL errada, a consulta falhou e o aplicativo mostrou a mensagem "Erro ao buscar temperatura.".
4. Nao podemos testar uma temperatura fixa porque a temperatura muda com o tempo. O correto e testar se chegou algum valor e se esse valor e numerico.
5. Testar a comunicacao com a API e importante para saber se o aplicativo consegue buscar dados reais e tratar erros quando a consulta nao funciona.

## Como executar os testes

```text
flutter test
flutter test integration_test/weather_api_test.dart
flutter test integration_test/weather_app_test.dart
```
