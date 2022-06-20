void main() {
  Queue queue = Queue();
  queue.push('Mohamed');
  queue.push('Ahmed');
  queue.push('Ali');
  print(queue.queueList);
  print(queue.peek());
  queue.pop();
  queue.pop();
  print(queue.queueList);
  print(queue.empty());
}

class Queue {
  List<String> queueList = [];
  String? top;
  String? bottom;

  void push(String value) {
    queueList.add(value);
    top = queueList[0];
    bottom = queueList[queueList.length - 1];
  }

  void pop() => queueList.removeAt(0);

  String? peek() => top;

  bool empty() => queueList.isEmpty;
}
