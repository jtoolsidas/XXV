import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import "../levels.dart";

/*Future<List<GameLevel>> fetchGameLevels() async {
  const String apiUrl = 'https://api.airtable.com/v0/appXsAOHEddoDhqCu/tbl2jqLOinImJQj7h';
  const String personalAccessToken = 'patNTVnlZ9jVJRc5d.f27fc2a41f92b524676efa1f79744189b027a67d981bb9d00bcb54a2c49992eb';
  // Making the API request
  try {
    final response = await http.get(
      Uri.parse('https://api.airtable.com/v0/appXsAOHEddoDhqCu/tbl2jqLOinImJQj7h'),
      headers: {
        'Authorization': 'Bearer $personalAccessToken',
      },
    );

    if (response.statusCode == 200) {
      //return parseLevels(response.body);
    } else {
      // Log non-200 responses as errors
      throw Exception('Failed to fetch levels: ${response.statusCode} - ${response.body}');
    }
  } catch (e, stackTrace) {
    // Log the error and stack trace for debugging
    print('Error: $e');
    print('StackTrace: $stackTrace');
    rethrow; // Pass the error to the FutureBuilder
  }
} */
