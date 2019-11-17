import 'package:english_words/english_words.dart' as prefix0;
import 'package:first_flutter_app/l_SnackBar.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//void main() => runApp(MyApp());
// void main() => runApp(First());
// void main() => runApp(Second());
// void main() => runApp(l_Align());
// void main() => runApp(LAppbar());
// void main() => runApp(LBottomAppBar());
// void main() => runApp(LButtonBar());
// void main() => runApp(LFlexibleSpaceBar());
// void main() => runApp(LSliverAppBar());
void main() => runApp(LSnackBar());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Startup Name Generator'),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  //创建一个数组
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(prefix0.generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
