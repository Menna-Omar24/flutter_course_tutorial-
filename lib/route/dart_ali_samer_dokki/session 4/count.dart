// function count
// List<int> , int
// iterate on list  and get the count of this number
// return count

void main(){
  var n = [5,"",false,];
  List<int> numbers = [55 ,3 ,1 ,0 ,9 ,7, 77, 4,-1,32,18];
  String name = "ahmed";
  print(n);
  print(name);
  selectionSort(numbers);
  print(numbers);
  int index = binarySearch(numbers, 100);
  if(index == -1){
    print("Not found");
  }else{
    print("Found at position $index");
  }
  /*int counter = count(numbers, 100);
  getMin(numbers);
  int index = search(numbers, 77);
  if(index == -1){
    print("Not found");
  }else{
    print("found at $index");
  }

  int x = 6;

  int y = 10;
  int temp = x;
  x= y;
  y = temp;*/
}

int count(List<int> numbersList , int n){
  int counter = 0;
  for(int i=0;i<numbersList.length;i++){
    if(numbersList[i] == n){
      counter++;
    }
  }
  return counter;
}
search(List<int> numbersList , int n){  // linear search
  for(int  i=0;i<numbersList.length;i++){ // O(n)
    if(numbersList[i]==n){
      return i;
    }
  }
  return -1;
}
int binarySearch(List<int>numbersList , int n){
  int start = 0;
  int end = numbersList.length - 1;
  while(end>=start){
    int mid = (start+end)~/2;
    if(numbersList[mid]==n){
      return mid;
    }else if(n>numbersList[mid]){
      start = mid+1;
    }else{
      end = mid-1;
    }
  }
  return -1;
}
void getMin(List<int> numbersList){
  int min = numbersList[0];
  for(int i=0;i<numbersList.length;i++){
    if(numbersList[i]<min){
      min = numbersList[i];
    }
  }
  print(min);
}
// getMin
// search on minimum number
// return minimum number

// linear search
// binary search- (sorted list)

// bubble sort // optimized
// selection sort

void bubblesort(List<int> numbers){
  for(int i=0;i<numbers.length;i++){
    bool isSwapped = false;
    for(int j=0;j<numbers.length-1;j++){
      if(numbers[j]>numbers[j+1]){
        isSwapped = true;
        int temp = numbers[j];
        numbers[j] = numbers[j+1];
        numbers[j+1] = temp;
      }else{
        return;
      }
    }
    if(isSwapped == false){
      return ;
    }
    print(numbers);
  }
}

void selectionSort(List<int> numbers){
  for(int i= 0;i<numbers.length;i++){
    int minIndex = getMinIndex(numbers,i);
    int temp = numbers[minIndex];
    numbers[minIndex] = numbers[i];
    numbers[i] = temp;
  }
}

int getMinIndex(List<int> numbers,int start){
  int min = start;
  for(int i=start;i<numbers.length;i++){
    if(numbers[i]<numbers[min]){
      min = i;
    }
  }
  return min;
}

