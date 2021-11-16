
import 'package:flutter/material.dart';

abstract class CustomTile<T> extends StatelessWidget {
  const CustomTile({Key? key, required this.model, this.onTap, this.onLongTap})
      : super(key: key);
  final VoidCallback? onTap, onLongTap;
  final T model;


}