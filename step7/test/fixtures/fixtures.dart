import 'dart:async';
import 'dart:io';

Future<File> fixture(String name) async => File('test/fixtures/$name');
