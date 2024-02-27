//program to insert element at the end of an "array"

//TRIAL ONE
class InsertInArr {
  var arr = List<int>.filled(3, 0, growable: true);
  int size = 3; //length of array
  int count = 0; //number of used up space in the array

  //method to add elements to the array
  List<int> add(int data) {
    if (count == size) {
      growSize();
    }
    arr[count] = data;
    count++;

    return arr;
  }

  //method to grow/double size of array
  void growSize() {
    var temp = List<int>.filled(size * 2, 0); //new array with size doubled
    for (int i = 0; i < size; i++) {
      //for every element in arr,
      temp[i] = arr[i]; //copy to new array temp
    }
    arr = temp; // initialize arr to temp

    size *= 2; //update to current size
  }

//function to insert an element at a given index
  List<int> insertAtIndex(int index, int x) {
    if (index < size) {
      for (int i = count - 1; i >= index; i--) {
        arr[i + 1] = arr[i]; //moving the elements to the next index
      }
      arr[index] = x; //add new element at given index
      count++;
    } else {
      return arr;
    }
    return arr;
  }
}

void main() {
  InsertInArr insert = InsertInArr();
  print(insert.add(2));
  print(insert.add(4));
  print(insert.add(6));
  print(insert.add(8));
  print(insert.add(10));
  print(insert.add(12));
  print(insert.insertAtIndex(10, 14));
  print(insert.insertAtIndex(3, 14));
  print(insert.insertAtIndex(0, 12));
  print(insert.insertAtIndex(1, 13));
  print(insert.insertAtIndex(2, 14));
  print(insert.insertAtIndex(3, 15));

  print(insertAtTheEnd([2, 1, 3, 6, 7, 4, 5, 9], 11));
}

//TRIAL TWO
List<int> insertAtTheEnd(List<int> arr, int x) {
  arr.add(x);
  return arr;
}
