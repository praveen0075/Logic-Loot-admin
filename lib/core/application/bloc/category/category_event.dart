part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.addCategory({required String category, required String description}) = _AddCategory;
  const factory CategoryEvent.getCategory() = _GetCategory;
  const factory CategoryEvent.deleteCategory({required int id}) = _DeleteCategory;
}