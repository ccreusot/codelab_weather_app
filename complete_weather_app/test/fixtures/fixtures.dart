import 'dart:async';
import 'dart:io';

Future<File> fixture(String name) async {
  return File('test/fixtures/$name');
}
