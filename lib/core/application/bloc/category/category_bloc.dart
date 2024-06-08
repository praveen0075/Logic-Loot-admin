import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic_loot_admin/core/data/services/category_services.dart';
// import 'package:logic_loot_admin/core/domain/model/response_model/category_response_model.dart';
// import 'package:logic_loot_admin/core/domain/model/response_model/category_response_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_allcategoris_response.dart';
// import 'package:logic_loot_admin/core/domain/repository/category_repository.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryServices categoryRepo;

  CategoryBloc(this.categoryRepo) : super(const CategoryState.initial()) {
    on<_GetCategory>((event, emit) async {
      emit(const CategoryState.loading());
      final result = await categoryRepo.getAllcategory();
      result.fold(
        (failure) => emit(CategoryState.errorst(failure)),
        (success) => emit(CategoryState.success(success)),
      );
    });

    on<_DeleteCategory>((event, emit) async {
      emit(const CategoryState.loading());
      final result = await categoryRepo.deleteCategoryWithId(categoryId: event.id);
      result.fold(
        (failure) => emit(CategoryState.errorst(failure)),
        (success) => emit(const CategoryState.deleteSuccess()),
      );
    });

    on<_AddCategory>((event, emit) async {
      emit(const CategoryState.loading());
      final result = await categoryRepo.addCategory(
        categoryNameValue: event.categoryNameValue,
        categoryDescriptionValue: event.categoryDescriptionValue,
      );
      result.fold(
        (failure) => emit(CategoryState.addFailure(failure)),
        (success) => emit(CategoryState.addCategorySuccess(success)),
      );
    });
  }
}
