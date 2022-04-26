import 'package:equatable/equatable.dart';

class Category extends Equatable {
  const Category({required this.id, required this.title, required this.color});
  
  final int id;
  final String title;
  final int color;

  @override
  List<Object> get props => [id, title, color];
}
