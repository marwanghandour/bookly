import 'package:bookly/src/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

sealed class NewBooksState extends Equatable {
  const NewBooksState();

  @override
  List<Object> get props => [];
}
 
  class NewBooksInitial extends NewBooksState {}
  class NewBooksSuccess extends NewBooksState {
    final List<BookModel> books;

  const NewBooksSuccess({required this.books});
  }
  class NewBooksLoading extends NewBooksState {}
  class NewBooksFailure extends NewBooksState {
    final String errMessage;

  const NewBooksFailure({required this.errMessage,});
  }

  
  
