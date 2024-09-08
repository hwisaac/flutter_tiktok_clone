
## Font awesome

### 10.3.0 설치하기 

- `pubspec.yaml` 의 dependencies 에서 `font_aesome_flutter: 10.3.0` 추가 후 저장하면 자동으로 패키지를 설치함
- 혹은 get package 버튼을 누른다.
- 설치하면 디버그 세션을 재시작한다.


## 미디어 파일 사용하기
### 미디어파일 경로지정

`pubspec.yaml` 에서 `assets` 경로를 지정해준다.

### video_player 설치

`flutter pub add video_player` 로 설치
또는 pubspec.yaml 에서 dependencies 에 추가


## translation

pubspec.yaml
```yaml
flutter:
  generate: true
```

l10n.yaml
```
arb-dir: lib/intl
template-arb-file: intl_en.arb
output-localization-file: intl_generated.dart
```

lib/intl/intl_en.arb
```arb
{
  "signUpTitle" : "Sign up for Tiktok"
}
```

lib/intl/intl_ko.arb
```
{
  "signUpTitle": "Tiktok에 가입하세요"
}
```

- 키는 동일 해야 한다.

- `flutter gen-l10n` 터미널에 입력

## 패키지
- flutter pub add camera 카메라 사용 패키지
- flutter pub add permission_handler 권한 요청하기 패키지
- imagge_picker 라이브러리에서 동영상/이미지 가져오기


# 에러

Stack 자식으로 Expanded 위젯 쓸 수 없다!
- Stack 대신 Row 위젯을 사용하자