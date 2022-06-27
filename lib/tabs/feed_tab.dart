import 'package:flutter/material.dart';

class FeedTab extends StatefulWidget {
  const FeedTab({Key? key}) : super(key: key);

  @override
  _FeedTabState createState() => _FeedTabState();
}

class _FeedTabState extends State<FeedTab> {
  @override
  Widget build(BuildContext context) => Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/exp.jpg'),
            fit: BoxFit.cover,))
  );
}
