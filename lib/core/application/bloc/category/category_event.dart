part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.addCategory({required String categoryNameValue, required String categoryDescriptionValue}) = _AddCategory;
  const factory CategoryEvent.getCategory() = _GetCategory;
  const factory CategoryEvent.deleteCategory({required int id}) = _DeleteCategory;
}