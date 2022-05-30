import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class SignPdfPage extends StatefulWidget {
  final File file;
  const SignPdfPage({Key? key, required this.file}) : super(key: key);

  @override
  State<SignPdfPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignPdfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}
