part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

 class FeaturedBooksInitial extends FeaturedBooksState {}
 class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessege;

  const FeaturedBooksFailure({required this.errMessege});
 }
 class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess({required this.books});
 }
 class FeaturedBooksLoading extends FeaturedBooksState {}


