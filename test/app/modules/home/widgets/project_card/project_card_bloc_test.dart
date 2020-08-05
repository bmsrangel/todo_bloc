import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_bloc/app/app_module.dart';
import 'package:todo_bloc/app/modules/home/widgets/project_card/project_card_bloc.dart';
import 'package:todo_bloc/app/modules/home/home_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(HomeModule());
  ProjectCardBloc bloc;

  // setUp(() {
  //     bloc = HomeModule.to.get<ProjectCardBloc>();
  // });

  // group('ProjectCardBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<ProjectCardBloc>());
  //   });
  // });
}
