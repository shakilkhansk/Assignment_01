void main(){
  List<int> subjects = [80, 92, 78, 65, 96, 72];
  // Calculate grade
  double sum = 0;
  for (int sub in subjects){
    sum += sub;
  }

  //calculating average
  double average = sum/subjects.length;

  // Round the average to the nearest integer
  int roundedAverage = average.round();

  print("Student's average grade: $average");
  print("Rounded average: $roundedAverage");

  // Check passed or failed
  if (roundedAverage >= 70) {
    print("Passed");
  } else {
    print("Failed");
  }

}