import 'package:flutter_riverpod/flutter_riverpod.dart';

enum KnowledgeLevel { Iniciante, Intermedio, Avancado }

final knowledgeLevelProvider = StateProvider<KnowledgeLevel>((_) => KnowledgeLevel.Iniciante);
