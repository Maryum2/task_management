// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:bloc_test/bloc_test.dart';
// import 'package:task_manager_app/data/api/base_status.dart';
// import 'package:task_manager_app/presentation/features/task/bloc/task_cubit.dart';
// import 'package:task_manager_app/presentation/features/task/bloc/task_state.dart';
// import 'package:task_manager_app/domain/use_cases/task/get_all_tasks_use_case.dart';
// import 'package:task_manager_app/domain/use_cases/task/add_task_use_case.dart';
// import 'package:task_manager_app/domain/use_cases/task/update_task_use_case.dart';
// import 'package:task_manager_app/domain/use_cases/task/delete_task_use_case.dart';
// import 'package:task_manager_app/domain/use_cases/task/task_preferences/save_task_to_storage_use_case.dart';
// import 'package:task_manager_app/domain/use_cases/task/task_preferences/get_task_from_storage_use_case.dart';
// import 'package:task_manager_app/domain/use_cases/task/task_preferences/delete_task_from_storage_use_case.dart';
// import 'package:task_manager_app/domain/use_cases/task/task_preferences/update_task_in_storage_use_case.dart';
// import 'package:task_manager_app/domain/use_cases/task/task_preferences/save_all_tasks_to_storage_use_case.dart';
// import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';

// class MockGetAllTasksUseCase extends Mock implements GetAllTasksUseCase {}
// class MockAddTaskUseCase extends Mock implements AddTaskUseCase {}
// class MockUpdateTaskUseCase extends Mock implements UpdateTaskUseCase {}
// class MockDeleteTaskUseCase extends Mock implements DeleteTaskUseCase {}
// class MockSaveTaskToStorageUseCase extends Mock implements SaveTaskToStorageUseCase {}
// class MockGetTaskFromStorageUseCase extends Mock implements GetTaskFromStorageUseCase {}
// class MockDeleteTaskFromStorageUseCase extends Mock implements DeleteTaskFromStorageUseCase {}
// class MockUpdateTaskInStorageUseCase extends Mock implements UpdateTaskInStorageUseCase {}
// class MockSaveAllTasksToStorageUseCase extends Mock implements SaveAllTasksToStorageUseCase {}

// void main() {
//   late TaskCubit taskCubit;
//   late MockGetAllTasksUseCase mockGetAllTasksUseCase;
//   late MockAddTaskUseCase mockAddTaskUseCase;
//   late MockUpdateTaskUseCase mockUpdateTaskUseCase;
//   late MockDeleteTaskUseCase mockDeleteTaskUseCase;
//   late MockSaveTaskToStorageUseCase mockSaveTaskToStorageUseCase;
//   late MockGetTaskFromStorageUseCase mockGetTaskFromStorageUseCase;
//   late MockDeleteTaskFromStorageUseCase mockDeleteTaskFromStorageUseCase;
//   late MockUpdateTaskInStorageUseCase mockUpdateTaskInStorageUseCase;
//   late MockSaveAllTasksToStorageUseCase mockSaveAllTasksToStorageUseCase;

//   setUp(() {
//     mockGetAllTasksUseCase = MockGetAllTasksUseCase();
//     mockAddTaskUseCase = MockAddTaskUseCase();
//     mockUpdateTaskUseCase = MockUpdateTaskUseCase();
//     mockDeleteTaskUseCase = MockDeleteTaskUseCase();
//     mockSaveTaskToStorageUseCase = MockSaveTaskToStorageUseCase();
//     mockGetTaskFromStorageUseCase = MockGetTaskFromStorageUseCase();
//     mockDeleteTaskFromStorageUseCase = MockDeleteTaskFromStorageUseCase();
//     mockUpdateTaskInStorageUseCase = MockUpdateTaskInStorageUseCase();
//     mockSaveAllTasksToStorageUseCase = MockSaveAllTasksToStorageUseCase();

//     taskCubit = TaskCubit(
//       const TaskState(),
//       mockGetAllTasksUseCase,
//       mockAddTaskUseCase,
//       mockUpdateTaskUseCase,
//       mockDeleteTaskUseCase,
//       mockSaveTaskToStorageUseCase,
//       mockGetTaskFromStorageUseCase,
//       mockDeleteTaskFromStorageUseCase,
//       mockUpdateTaskInStorageUseCase,
//       mockSaveAllTasksToStorageUseCase,
//     );
//   });

//   group('TaskCubit', () {
//     test('initial state is correct', () {
//       expect(taskCubit.state, const TaskState());
//     });

//     blocTest<TaskCubit, TaskState>(
//       'emits success state when getAllTasks is called and fetches tasks successfully',
//       setUp: () {
//         when(mockGetAllTasksUseCase.run(skip: anyNamed('skip'), limit: anyNamed('limit')))
//             .thenAnswer((_) async => GetAllTasksEntity(allTasksItemEntity: []));
//       },
//       build: () => taskCubit,
//       act: (cubit) async => await cubit.getAllTasks(),
//       expect: () => [
//         taskCubit.state.copyWith(getAllTasksStatus: const BaseStatus.loading()),
//         taskCubit.state.copyWith(
//           getAllTasksStatus: const BaseStatus.success(),
//           allTasks: GetAllTasksEntity(allTasksItemEntity: []),
//           skip: 0, // Assuming the initial skip is 0 and the limit is also 0
//         ),
//       ],
//     );

//     blocTest<TaskCubit, TaskState>(
//       'emits failure state when getAllTasks fails',
//       setUp: () {
//         when(mockGetAllTasksUseCase.run(skip: anyNamed('skip'), limit: anyNamed('limit')))
//             .thenThrow(Exception('Error fetching tasks'));
//       },
//       build: () => taskCubit,
//       act: (cubit) async => await cubit.getAllTasks(),
//       expect: () => [
//         taskCubit.state.copyWith(getAllTasksStatus: const BaseStatus.loading()),
//         taskCubit.state.copyWith(
//           getAllTasksStatus: BaseStatus.failure(anything),
//         ),
//       ],
//     );

//     blocTest<TaskCubit, TaskState>(
//       'emits success state when addTask is called and adds a task successfully',
//       setUp: () {
//       when(mockAddTaskUseCase.run(task: anyNamed('task'), isCompleted: anyNamed('isCompleted')))
//     .thenAnswer((_) async => const GetAllTasksEntity(allTasksItemEntity: []));

//         when(mockSaveTaskToStorageUseCase.run(any)).thenAnswer((_) async {});
//       },
//       build: () => taskCubit,
//       act: (cubit) async => await cubit.addTask('New Task', false),
//       expect: () => [
//         taskCubit.state.copyWith(addTaskStatus: const BaseStatus.loading()),
//         taskCubit.state.copyWith(
//           addTaskStatus: const BaseStatus.success(),
//           allTasks: taskCubit.state.allTasks?.copyWith(
//             allTasksItemEntity: [GetAllTasksEntity(allTasksItemEntity: []).allTasksItemEntity!.first], // Update with the new task
//           ),
//         ),
//       ],
//     );

//     // Additional tests for updateTask, deleteTask, etc. can be written in a similar way
//   });
// }
