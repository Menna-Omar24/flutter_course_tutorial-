void main() {
  bool isAdmin = false;
  bool isModerator = false;
  bool isGroupExpert = false;
  if (isAdmin) {
    print('you have Admin privileges');
  } else if (isModerator) {
    print('you have Moderator privileges');
  } else if (isGroupExpert) {
    print('you have GroupExpert privileges');
  } else {
    print('you have USER privileges');
  }
}
