Bài thực hành đóng gói thư viện Java

1. Vào thư mục math-lib và chạy:
mvn clean package

2. Copy file:
math-lib/target/math-lib.jar

sang:
calculator-app/lib/math-lib.jar

3. Vào thư mục calculator-app và chạy:
mvn clean package

4. Chạy chương trình:
Windows:
java -cp "target/classes;lib/math-lib.jar" com.codegym.Main

macOS/Linux:
java -cp "target/classes:lib/math-lib.jar" com.codegym.Main
