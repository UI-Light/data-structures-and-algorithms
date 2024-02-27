void main() {
  DeleteElement delete = DeleteElement();

  print(delete.deleteFromArray([2, 4, 6, 8, 10, 12, 14], 10));
}

class DeleteElement {
  List<int> result = [];

//function to delete an element from an array
  List<int> deleteFromArray(List<int> arr, int item) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] != item) {
        result.add(arr[i]);
      }
    }

    return result;
  }
}
