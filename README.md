# DS-ClassSurvey
Simple Web Application using MVC model. #Java

一个简单的投票系统

采用 MVC 模式：

1. Model 记录选项和票数
2. View 用 JSP 完成
    - index.jsp 现实所有选项，并可以投票
    - next.jsp 下一次投票
    - result.jsp 页面来展示投票结果
3. Controller 中写 Servlet
    - doGet 读取投票结果
    - doPost 接收投票动作，并调用model中的投票逻辑
