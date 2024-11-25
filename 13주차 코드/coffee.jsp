<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>switch</title></head>
<body>
<h3>switch 문으로 커피 주문</h3>
<hr>
<script>
    var price = 0;
    var coffee = prompt("무슨 커피 드릴까요?", "");
    var cup = prompt("몇 잔 드릴까요?", "");
    
    switch(coffee) {
        case "espresso" :
        case "에스프레소" : price = 2000;
            break;
        case "카푸치노" : price = 3000;
            break;
        case "카페라떼" : price = 3500;
            break;
        default : 
            document.write(coffee + "는 없습니다.");
            break;
    }
    if (price != 0) { 
        document.write(coffee + " " + cup + "잔은 총 " + price * cup + "원입니다.");
    }
</script>
</body>
</html>
