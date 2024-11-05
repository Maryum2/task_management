import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task_manager_app/data/api/api_config.dart';
import 'package:task_manager_app/data/dto/task/add_task_response.dart';
import 'package:task_manager_app/data/dto/task/delete_task_response.dart';
import 'package:task_manager_app/data/dto/task/edit_task_response.dart';
import 'package:task_manager_app/data/dto/task/get_all_tasks_response.dart';
import 'package:task_manager_app/data/dto/task/task_dto.dart';
import 'package:task_manager_app/data/models/task/add_task_request.dart';
import 'package:task_manager_app/data/models/task/update_task_request.dart';
import 'package:task_manager_app/injection/http_module.dart';

part 'task_http_data_source.g.dart';

@RestApi()
@injectable
abstract class TaskHttpDataSource {
  @factoryMethod
  factory TaskHttpDataSource(@Named(dioAuthenticated) Dio dio) =
      _TaskHttpDataSource;

  @GET(ApiConfig.getAllTasks)
  Future<GetAllTasksResponse> getAllTasks(
    @Query('limit') int limit,
    @Query('skip') int skip,
  );
  @POST(ApiConfig.addTask)
  Future<TaskDto> addTask(
    @Body() AddTaskRequest body,
  );
  @PUT(ApiConfig.editTask)
  Future<TaskDto> updateTask(
    @Path('id') int id,
    @Body() UpdateTaskRequest body,
  );
  @DELETE(ApiConfig.deleteTask)
  Future<TaskDto> deleteTask(
    @Path('id') int id,
  );
}
