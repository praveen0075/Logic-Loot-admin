import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/category_response_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_allcategoris_response.dart';
import 'package:logic_loot_admin/core/domain/repository/category_repository.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository categoryRepo;

  CategoryBloc(this.categoryRepo) : super(CategoryState.initial()) {
    on<_AddCategory>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await categoryRepo.addCategory(
          category: event.category, description: event.description);
      result.fold((failure) {
        print("failure on (fold)");
        emit(state.copyWith(
            isLoading: false,
            isAddCategorySuccess: false,
            isAddcateHasError: true,
            messag: failure));
      }, (success) {
        print("Success on (fold)");
        emit(state.copyWith(
            isLoading: false,
            isAddCategorySuccess: true,
            isAddcateHasError: false,
            messag: success.success));
      });
    });

    on<_GetCategory>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await categoryRepo.getAllcategory();
      print(result);
      result.fold((failure) {
        print("Failure");
        emit(state.copyWith(
            isLoading: false,
            isGetCategoryHasError: true,
            isGEtCategorySuccess: false,
            messag: failure));
      }, (success) {
        print(success);
        emit(state.copyWith(
            isLoading: false,
            isGetCategoryHasError: false,
            isGEtCategorySuccess: true,
            getallCategory: success.categories)); 
      });
    });

    on<_DeleteCategory>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await categoryRepo.deleteCategory(id: event.id);
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            isDeleteCategorySuccess: false,
            isDeleteCategoryhasErro: true,
            messag: failure));
      }, (success) {
        emit(state.copyWith(
            isLoading: false,
            isDeleteCategorySuccess: true,
            isDeleteCategoryhasErro: false,
            messag: success));
      });
    });
  }
}