import 'bank_account.dart';

class Client{
  String name;
  String address;
  String phoneNumber;
  late BankAccount account;
  Client({required this.name , required this.address ,required this.phoneNumber});

  viewDetails(){
    print("Name: $name");
    print("Address: $address");
    print("phone: $phoneNumber");
  }
}