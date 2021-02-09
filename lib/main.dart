import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde ',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde ',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde ',
        text: 'The truth is rarely pure and never simple')
  ];

  //USED ON SECOND BUILD
  // Widget quoteTemplate(quote){
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        //FIST BUILD
        // children: quotes.map((e) => Text('${e.text} - ${e.author}')).toList(),
        //SECOND BUILD
        // children: quotes.map((q) => quoteTemplate(q)).toList(),
        //THIRD BUILD
        children: quotes.map((q) => QuoteCard(quote: q)).toList(),
      ),
    );
  }
}
//USED IN SECOND BUILD WHEN UNCOMMENTED MADE THIS INTO ITS OWN DART FILE FOR THIRD BUILD
// class QuoteCard extends StatelessWidget {
//
//   final Quote quote;
//   QuoteCard({this.quote});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               quote.text,
//               style: TextStyle(
//                   fontSize: 18.0,
//                   color: Colors.grey[800]
//               ),
//             ),
//             SizedBox(height: 6.0),
//             Text(
//               quote.author,
//               style: TextStyle(
//                   fontSize: 14.0,
//                   color: Colors.grey[800]
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
