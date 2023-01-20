import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpClient extends http.BaseClient {
  HttpClient({
    required this.userAgent,
  });

  final String userAgent;
  final http.Client _inner = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['user-agent'] = userAgent;
    return _inner.send(request);
  }
}

extension ResponseExtension on http.Response {
  T asItem<T>(T Function(Map<String, dynamic>) jsonParser) {
    final decoded = utf8.decode(bodyBytes);
    final json = jsonDecode(decoded) as Map<String, dynamic>;
    return jsonParser(json);
  }

  List<T> asList<T>(List<T> Function(List) jsonParser) {
    final decoded = utf8.decode(bodyBytes);
    final json = jsonDecode(decoded) as List;
    return jsonParser(json);
  }
}
