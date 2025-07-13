class Node {
  int value; // دي القيمة اللي في العقدة
  Node? next; // دي الوصلة اللي بتشاور على العقدة اللي بعدها

  Node(this.value); // ده الكونستركتور اللي بيستقبل القيمة ويخزنها
}

Node? linkedListExample(int n) {
  Node? head; // ده رأس القائمة (العقدة الأولى)
  for (int i = 0; i < n; i++) {
    Node newNode = Node(i); // بنعمل عقدة جديدة
    newNode.next = head; // بنخلي العقدة الجديدة تشاور على العقدة اللي قبلها
    head = newNode; // بنحدث الرأس ليبقى العقدة الجديدة
  }
  return head; // بنرجع رأس القائمة
}

void printList(Node head) {
  Node? current = head; // بنبدأ من رأس القائمة
  while (current != null) {
    print(current.value); // بنطبع قيمة العقدة الحالية
    current = current.next; // بنروح للعقدة اللي بعدها
  }
}

void main() {
  Node? head = linkedListExample(5); // بنعمل قائمة من 5 عقد
  if (head != null) { // التأكد من أن الرأس ليس null
    printList(head); // بنطبع القيم في القائمة
  }
}
