/*
  Comparison between Bubble Sort, Selection Sort, and Insertion Sort

  1. Bubble Sort

     - Worst Case:
       - Time Complexity: O(n^2)
       - Description: The worst case occurs when the array is sorted in reverse order. Bubble sort must make multiple passes through the array and perform many swaps.

     - Best Case:
       - Time Complexity: O(n)
       - Description: The best case occurs when the array is already sorted. With an optimized version of bubble sort that detects no swaps, it only requires one pass through the array.

     - Average Case:
       - Time Complexity: O(n^2)
       - Description: On average, bubble sort performs a number of comparisons and swaps proportional to the square of the number of elements in the array.

  2. Selection Sort

     - Worst Case:
       - Time Complexity: O(n^2)
       - Description: The worst case occurs regardless of the initial arrangement of the array. Selection sort always performs the same number of comparisons and swaps, making it consistently O(n^2).

     - Best Case:
       - Time Complexity: O(n^2)
       - Description: The best case is the same as the worst case for selection sort because it always performs n(n-1)/2 comparisons, regardless of the initial order.

     - Average Case:
       - Time Complexity: O(n^2)
       - Description: The average case is also O(n^2) since selection sort performs a fixed number of comparisons and swaps regardless of the initial arrangement of the array.

  3. Insertion Sort

     - Worst Case:
       - Time Complexity: O(n^2)
       - Description: The worst case occurs when the array is sorted in reverse order. In this case, each insertion requires shifting all previously sorted elements.

     - Best Case:
       - Time Complexity: O(n)
       - Description: The best case occurs when the array is already sorted. In this case, insertion sort only performs one comparison per element and requires minimal shifting.

     - Average Case:
       - Time Complexity: O(n^2)
       - Description: On average, insertion sort performs a number of comparisons and shifts proportional to the square of the number of elements in the array.

  Summary

  - Bubble Sort: Simple to implement but inefficient for large arrays due to its O(n^2) average and worst-case time complexities. Performs well when the array is nearly sorted.

  - Selection Sort: Also O(n^2) in all cases. It is simple and easy to understand but does not perform significantly better than bubble sort, especially on large arrays.

  - Insertion Sort: More efficient than bubble and selection sorts for small or nearly sorted arrays. Its O(n) best case makes it preferable for arrays that are already close to being sorted, while it performs poorly in the average and worst cases.
*/
