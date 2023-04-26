import 'package:example_riverpod/data/source/files_source.dart';
import 'package:example_riverpod/data/source/files_source_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filesProvider = Provider<FilesSource>((ref) {
  return FilesSourceImpl();
});
