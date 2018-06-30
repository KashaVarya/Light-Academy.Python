**Examples of usage "Notice Board API" with Curl**

To sign up:
```
curl -i -H "Content-Type: application/json" -X POST -d '{"login": "your_login", "password": "your_password", "confirm_password": "your_password"}' http://localhost:5000/notice_board/api/v1.0/signup
```

To list all notices:
```
curl -u varya:varya -i http://localhost:5000/notice_board/api/v1.0/notices

```

To get a notice:
```
curl -u varya:varya -i http://localhost:5000/notice_board/api/v1.0/notices/2

```

To add a notice:
```
curl -u varya:varya -i -H "Content-Type: application/json" -X POST -d '{"title":"Xochy morozhenko!", "author":"varya"}' http://localhost:5000/notice_board/api/v1.0/add_notice

```

To add a comment:
```
curl -u varya:varya -i -H "Content-Type: application/json" -X POST -d '{"comment":"privet vsem"}' http://localhost:5000/notice_board/api/v1.0/notices/1/add_comment
```

To like a notice board:
```
curl -u varya:varya -i -H "Content-Type: application/json" -X POST http://localhost:5000/notice_board/api/v1.0/notices/1/like

```

But don't forget that you cannot like and comment more that 5 times per hour.