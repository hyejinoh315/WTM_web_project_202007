# Git

구글드라이브와 비슷한 웹하드 형태의 사이트



### commit

업로드 대기상태로 만들어 놓는 것

### push

업로드 대기 상태의 파일들을 일괄 업로드 하는 것 (푸쉬하다)

### pull

push가 이미 되어있다면 에러가난다. 그럼 Git에서는 다시 다운로드를 받아서 push를 하라고 시킨다.

이 때 다운로드 받는 것 (풀받다)



업로드 순서

1. commit
2. push
3. pull
4. commit
5. push



### 버전관리 시스템 (형상관리 시스템)

Git은 파일 변경이력을 계속 추적하여 충돌을 방지해준다.

한 파일을 두사람이 수정하여 충돌이 발생했다면, Git은 알람을 주어 어떤 파일이 최종 수정 파일인지 물어본다.

또한 변경이력을 계속 저장하고 있기 때문에, 원하는 시점으로 되돌릴 수 있다.

>  풀 푸쉬는 하루에 두번씩 꼭 하고 미루지 말기!



## GitHub

Git을 웹사이트 형태로 만들어서 무료로 사용할 수 있게 해줌



### 클라이언트 프로그램

https://git-scm.com/

(cmd용)

설치 후 인증서 만들기

```shell
ssh-keygen
```

사용자홈폴더디렉토리\\.ssh에 위치함 (C:\\Users\\사용자\\이름\\.ssh)

다른 컴퓨터에서 사용할 경우 같은 위치에 넣어주면 된다



GitHub에 들어가서 -> Setting -> SSH and GPG keys -> New SSH key

C:\\Users\\사용자\\이름\\.ssh 폴더의 id_rsa.pub 파일을 메모장으로 열어서 내용에 붙여넣기



### GitHub 가이드

https://guides.github.com/activities/hello-world/



### Create a new repository

gitignore -> 업로드 하지 않을 언어 선택??

레파지토리 팀원 초대 Settings -> Manage access -> Invite a collaborator



### Download a repository

코드다운버튼을 누른다

Clone with HTTPS  속도가 많이 느리므로 Clone with SSH

Use a password protected SSH key 하위의 주소를 통째로 복사한다



1. github에 있는 프로젝트를 폴더째 다운로드

   - 명령프롬프트창에서 다운로드할 경로로 이동 

     ```shell
     D:
     ```

   - git clone `복사한주소붙여넣기`

     ```shell
     git clone git@github.com:hyejinoh315/test.git
     ```

   - 명령어를 수행한 위치에서 프로젝트 이름의 폴더가 생성된다
   
   


2. 생성된 프로젝트 폴더 초기화 작업

   - .gitignore파일과 README.md(선택사항) 파일을 정비

   - 프로젝트에서 사용할 기본 폴더 구조를 정립

     ```
     폴더샘플
     /.gitignore
     /README.md
     /assets/css
     /assets/img
     /assets/js
     /index.html ==> 사이트 대문
     ```

     

3. 작업 결과를 업로드 대기열에 등록 (Commit)

   ```shell
   git add --all
   git commit -m "!!코멘트!!"
   ```

   - 여기서 m 은 메시지를 의미하고 따옴표 안에는 모두가 알아볼 수 있는 코멘트를 단다
     	==> 면접시 중요하므로 코멘트 꼼꼼히 달아주세요~!!

   - 에러가 뜨는 경우, 딱 1회 적용하기

     ```shell
     *** Please tell me who you are.
     Run
     
     git config --global user.email "clia315@gmail.com"  <- 내 이메일
     git config --global user.name "hyejinoh315"         <- 내 이름
     ```

     

4. github에 소스코드 업로드 (Push)

   ```shell
   git push origin master
   ```

   - origin은 내 pc의 작업물
     
   - master는 github의 저장 내역
     
     

5. github로 부터 변경 내역만 다운로드 (Pull)

   ```shell
   git pull origin master
   ```

GitHub에 프로젝트가 만들어지면 무조건 GitHub이 원본이고 내 컴퓨터에 있는 파일들은 복사본이므로 작업이 꼬이면 컴퓨터상의 파일은 날려버려라.