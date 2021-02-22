import 'package:flutter/material.dart';
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
        children: quotes.map((quote) => Quote(quote)).toList(),
      ),
    );
  }
}

class Quote extends StatelessWidget {
  final quote;
  Quote(this.quote);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.cyan[700],
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(quote.text,
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  SizedBox(
                    height: 4,
                  ),
                  Text(quote.author,
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ],
              ),
               IconButton(
                  icon: Icon(Icons.delete,  size: 28,),
                  color: Colors.cyan[100],
                  tooltip: 'Remove the quote',
                  onPressed: () {
                    
                  },
                ),
            ],
          ),
        ));
  }
}
