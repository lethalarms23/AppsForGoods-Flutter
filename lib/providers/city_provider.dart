import 'package:flutter_riverpod/flutter_riverpod.dart';

enum cityLocation { Porto , Lisboa , Other }

final cityLocationState = StateProvider<cityLocation>((_) => cityLocation.Porto);