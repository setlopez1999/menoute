import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget{
  final String text;
  const EmptyState({required this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontSize: 18),
      ),
    );
  }
}