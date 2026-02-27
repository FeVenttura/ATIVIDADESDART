void main() {
  Set<int> setA = {1, 2, 3, 4, 5};
  Set<int> setB = {4, 5, 6, 7, 8};

  print(setA.union(setB));
  print(setA.intersection(setB));
  print(setA.difference(setB));
  print(setA.contains(3));
}