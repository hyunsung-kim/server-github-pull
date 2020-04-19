# server-github-pull
EC2 서버에서 Github의 키를 생성하고 등록한 후 `git pull`을 호출하고 서버를 다시 재기동 하는 프로그램 작성

## Feature
- Restart server
- Github source code pull
- ~~Generate RSA key~~
- Reigter Github url through cli


## Mongodb

### Create User
```
$ mongo # 입력 후

> // admin으로 계정 바꾸기
use admin;

// 계정 생성하기
> db.createUser({user: "test", pwd: "test", roles:["root"]});
```

### Get users
```
$ mongo --port 27017 -u "test" -p "test" --authenticationDatabase "admin"

> use admin;
switched to db admin
> db.getUsers()
[
  {
    "_id" : "admin.test",
    "userId" : UUID("1ca096ce-4793-4db1-806c-30b8be6cc807"),
    "user" : "test",
    "db" : "admin",
    "roles" : [
      {
      "role" : "root",
      "db" : "admin"
      }
    ],
    "mechanisms" : [
      "SCRAM-SHA-1",
      "SCRAM-SHA-256"
    ]
  }
]
```



## Reference
- [Ubuntu 18.04 + python](https://www.fun25.co.kr/blog/ubuntu-18-04-python3-venv-setup/)
- [Apt-get option](https://superuser.com/questions/164553/automatically-answer-yes-when-using-apt-get-install)
