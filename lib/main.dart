import 'package:flutter/material.dart';
import 'package:flutter_quote/quote_card.dart';
import 'package:flutter_quote/quote_statement.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotes App',
      home: QuotesHome(),
    );
  }
}

class QuotesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange[100],
            centerTitle: true,
            title: Text(
              'Quotes of the day',
              style: TextStyle(fontSize: 30, color: Colors.black87),
            )),
        body: Quotes());
  }
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<QuoteStatement> quotes = [
    QuoteStatement(text: "Hello World", author: "me"),
    QuoteStatement(text: "Mommy holly", author: "my friend"),
    QuoteStatement(text: "Welcome back", author: "my wife"),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[50],
      padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes
            .map((quote) => QuoteCard(
              quote: quote, 
              remove: () => setState(() => quotes.remove(quote)),
            )).toList(),
      ),
    );
  }
}
