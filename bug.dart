```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response here
      final jsonData = jsonDecode(response.body);
      // Handle the data
    } else {
      // Handle the error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the exception
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled further up the call stack
  }
}
```