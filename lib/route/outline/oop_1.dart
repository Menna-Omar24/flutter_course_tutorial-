
// ### **Classes**
// - **Class**: الكلاس هو المخطط اللي بنستخدمه لإنشاء كائنات. بيحدد الخصائص (attributes) والدوال (methods) اللي الكائنات هتحتويها.
//
// ### **Attributes (Fields)**
// - **Attributes (Fields)**: هي المتغيرات اللي بتخزن بيانات عن الكائنات. مثلاً، في كلاس اسمه `Student`، ممكن يكون فيه attributes زي `name` و `age`.
//
// ### **Methods**
// - **Methods**: هي الدوال اللي بتقوم بعمليات على الـ attributes. بتعطي الكائنات سلوك معين.
//
// ### **Constructors**
// - **Constructor**: دالة خاصة تستخدم لتهيئة الكائنات. بتحدد القيم الأولية للـ attributes بتاعت الكائن.
// - **Default Constructor**: هو constructor بدون بارامترات، وبيكون متاح تلقائي لو مفيش constructor تاني.
// - **Named Constructor**: هو constructor بيكون له اسم محدد، وبيسمح بطرق مختلفة لتهيئة الكائن.
//
// ### **Objects**
// - **Object**: الكائن هو مثيل (instance) من الكلاس. بيمثل تنفيذ محدد لمخطط الكلاس بقيم فعلية للـ attributes.
//
// ### **Encapsulation**
// - **Encapsulation**: هو مفهوم جمع البيانات (attributes) والدوال اللي بتعمل على البيانات دي في وحدة واحدة (الكلاس). كمان بيتضمن تقييد الوصول المباشر لبعض مكونات الكائن لحماية حالته الداخلية.
// - **Private**: أعضاء الكلاس اللي بتكون خاصة (private) مش متاحة خارج الكلاس نفسه. في Dart، بنستخدم underscore (`_`) في بداية اسم العضو لتحديده كخاص.
//
// ### **Setters and Getters**
// - **Getter**: دالة خاصة تستخدم لقراءة قيمة الـ attribute الخاص. بتسمح بالوصول لقيمة الكائن.
// - **Setter**: دالة خاصة تستخدم لتعديل أو تعيين قيمة الـ attribute الخاص. بتسمح بتغيير البيانات الخاصة بالكائن.
//
// ### مثال بالكود:
//
// ```dart
// class Student {
// // Private attributes
// String _name;  // خاص
// int _age;      // خاص
//
// // Constructor to initialize the attributes
// Student(this._name, this._age);
//
// // Getter for name
// String get name => _name;  // دالة قراءة الاسم
//
// // Setter for name
// set name(String newName) {
// _name = newName;  // دالة تعيين الاسم
// }
//
// // Getter for age
// int get age => _age;  // دالة قراءة العمر
//
// // Setter for age
// set age(int newAge) {
// if (newAge > 0) {  // تحقق بسيط
// _age = newAge;
// } else {
// print('Age must be positive');
// }
// }
// }
//
// void main() {
// // Creating an object of the Student class
// Student student1 = Student('Ahmed', 20);
//
// // Using getter to read values
// print(student1.name);  // Output: Ahmed
// print(student1.age);   // Output: 20
//
// // Using setter to modify values
// student1.name = 'Mona';
// student1.age = 22;
//
// // Displaying updated values
// print(student1.name);  // Output: Mona
// print(student1.age);   // Output: 22
// }
// ```
//
// في المثال ده، الكلاس `Student` بيستخدم **encapsulation** لحماية بياناته عبر استخدام **private** attributes، وبيوفر الوصول والتحكم في البيانات عبر **getters** و **setters**.