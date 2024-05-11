import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 4,
    lineLength: 150,
    printTime: true,
  ),
);
