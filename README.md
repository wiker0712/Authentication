pubspec.yaml 파일 변경사항

dependencies  3개 추가

  firebase_core: ^3.7.0
  firebase_auth: ^5.3.2
  google_sign_in: ^6.2.2


assets:   1개 추가
    - lib/images/google.png



-------------------------------------------------
OAuth 기능 - 구글로 로그인 로컬에서 테스트 하려면 SHA1, SHA256 인증서 firebase에 등록하여야 함

인증서 생성 관련 공식문서
https://developers.google.com/android/guides/client-auth?hl=ko#windows

안드로이드 스튜디오 콘솔 창에 아래 명령어 입력하면 됨
keytool -list -v -alias androiddebugkey -keystore %USERPROFILE%\.android\debug.keystore

%USERPROFILE%\.android\debug.keystore 이거 로컬 환경의 실제 경로로 지정해야 작동함

