import 'dart:convert';

import 'package:advicely/data/model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<Conseil> genererConseil() async {
  final client = http.Client();
  final uri = dotenv.env["API_URL"] ?? "";
  final cle = dotenv.env["API_KEY"] ?? "";
  final reponse = await client.get(Uri.parse(uri), headers: {"X-Api-Key": cle});
  final json =
      jsonDecode(utf8.decode(reponse.bodyBytes))
          as Map; // L'api ne retourne une liste dans ce cas présent.
  return Conseil.fromJSON(json);
}
