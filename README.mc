# 마인크래프트 서버

## 개요

필요할 때만 AWS에 저렴하게 켤 수 있는 마인크래프트 서버

## 특징
* [v] Spot 인스턴스를 사용하여 비용 최적화 (m5.large 기준 평균 $0.0315 / hr)
* [v] AutoscaleGroup 의 desired instance 갯수를 고치는것 만으로 즉시 실행
* [v] 기동과 동시에 EBS를 마운트하여 항상 최신 데이터 유지
* [-] Route53을 이용하여 도메인 자동 갱신
* [v] docker를 이용하여 설치가 간단하고 늘 최신 버전으로 업데이트

## TODO
* [ ] 접속자가 없을 경우 스스로 종료
* [ ] Slack or Discord 봇 지원
* [ ] CloudFormation 스크립트


