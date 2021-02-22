import 'package:flutter/material.dart';
import 'quote_statement.dart';


class QuoteCard extends StatelessWidget {
  final QuoteStatement quote;
  final Function remove;
  QuoteCard({this.quote, this.remove});

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
                icon: Icon(
                  Icons.delete,
                  size: 28,
                ),
                color: Colors.cyan[100],
                tooltip: 'Remove the quote',
                onPressed: remove,
              ),
            ],
          ),
        ));
  }
}
