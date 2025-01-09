// void main() {
//   List<int> array = [10, 20, 30, 5, 10, 50];
//   int count = array[0];
//   int max = 0;
//   for (int i = 1; i < array.length; i++) {
//     if (array[i - 1] < array[i]) {
//       count = count + array[i];
//     } else {
//       if (max < count) {
//         max = count;
//         count = array[i];
//       }
//     }
//   }
//   if (max < count) {
//     max = count;
//   }
//   print(max);
// }
