Bài tập đóng gói thư viện giải phương trình bậc 2

Build thư viện:
mvn clean package

File jar sau khi build:
target/quadratic-equation-lib.jar

Class chính:
src/main/java/com/codegym/QuadraticEquation.java

Ví dụ:
double[] roots = QuadraticEquation.solve(1, -3, 2);
