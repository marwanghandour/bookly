import 'package:bookly/src/data/repositories/home_repo.dart';
import 'package:bookly/src/presentation/blocs/new_books_cubit/new_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class FeaturedBooksCubit extends Cubit<NewBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(NewBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks ()async {
    emit(NewBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    
    result.fold(
      (failure) => emit(NewBooksFailure(errMessage: failure.errMessage)), 
      (books) => emit(NewBooksSuccess(books: books)),
    );
  }
}
