import 'dart:async';

typedef TaskManagerNotificationCallback<T> = void Function(T);

abstract class TaskManagerChangeNotifier<T> {
  TaskManagerChangeNotifier() : _streamController = StreamController<T>.broadcast();

  final StreamController<T> _streamController;

  final Map<TaskManagerNotificationCallback<T>, StreamSubscription<T>> _map = {};

  void addlistener(TaskManagerNotificationCallback<T> onNotification) {
    if (_map.containsKey(onNotification)) {
      removelistener(onNotification);
    }

    _map[onNotification] = _streamController.stream.listen(onNotification);
  }

  void removelistener(TaskManagerNotificationCallback<T> onNotification) {
    if (_map.containsKey(onNotification)) {
      _map[onNotification]?.cancel();
      _map.remove(onNotification);
    }
  }

  void notify(T notification) {
    _streamController.add(notification);
  }

  Future<void> dispose() async {
    // cancel all listeners
    await Future.wait(_map.values.map((e) => e.cancel()));
    // close the stream
    await _streamController.close();
  }
}
