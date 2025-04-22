void main() {
  String str = "anirudhan";
  print(reverse(str)); // Output: "nahdurina"
}

String reverse(String str) {
  if (str.isEmpty) {
    return "";
  }
  return reverse(str.substring(1)) + str[0];
}
