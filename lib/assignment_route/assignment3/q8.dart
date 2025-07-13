/*
  Comparison between Binary Search and Linear Search

  1. Performance

     - Linear Search:
       - Time Complexity: O(n)
       - Description: Linear search checks each element in the array sequentially until it finds the target element or reaches the end of the array. This means that in the worst case, it may need to examine every single element.

     - Binary Search:
       - Time Complexity: O(log n)
       - Description: Binary search divides the sorted array into halves repeatedly to narrow down the search. This significantly reduces the number of comparisons needed, making it faster than linear search for large arrays, assuming the array is sorted.

  2. Best Case

     - Linear Search:
       - Time Complexity: O(1)
       - Description: The best case occurs when the target element is at the very beginning of the array. In this scenario, the search completes immediately after checking the first element.

     - Binary Search:
       - Time Complexity: O(1)
       - Description: The best case occurs when the target element is exactly in the middle of the array. The search finds the target in the first comparison.

  3. Worst Case

     - Linear Search:
       - Time Complexity: O(n)
       - Description: The worst case occurs when the target element is at the very end of the array or is not present at all. In this case, every element must be checked.

     - Binary Search:
       - Time Complexity: O(log n)
       - Description: The worst case occurs when the search must continue dividing the array until it either finds the target element or determines that it is not in the array. Even in this case, the number of comparisons is logarithmic in relation to the size of the array.

  4. Average Case

     - Linear Search:
       - Time Complexity: O(n)
       - Description: On average, the target element is found halfway through the array. Thus, the number of comparisons needed is proportional to the size of the array.

     - Binary Search:
       - Time Complexity: O(log n)
       - Description: In the average case, binary search performs a logarithmic number of comparisons as it continuously divides the array into halves, regardless of where the target element is located.

  Summary

  - Linear Search: Simple and works on unsorted or small arrays but can be slow for large arrays as its time complexity is linear, O(n).

  - Binary Search: Efficient for large, sorted arrays with a logarithmic time complexity, O(log n), but requires the array to be sorted beforehand.
*/
