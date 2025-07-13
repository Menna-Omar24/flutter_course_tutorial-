class Node {
  int value;
  Node? next;

  Node(this.value);
}

void linkedListExample(int n) {
  Node? head;
  for (int i = 0; i < n; i++) {
    Node newNode = Node(i);
    newNode.next = head;
    head = newNode;
  }
}

void main() {
  linkedListExample(5); // إنشاء قائمة مرتبطة
}
