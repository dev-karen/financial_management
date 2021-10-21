import 'package:equatable/equatable.dart';

class Expense extends Equatable {
  const Expense({
    required this.id,
    required this.title,
    required this.description,
  });

  final String id;
  final String title;
  final String description;

  Expense copyWith({
    String? id,
    String? title,
    String? description,
  }) {
    return Expense(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        description,
      ];
}
