# 🌟 최원우의 데브옵스 & 클라우드 엔지니어링 포트폴리오

![CI/CD Status](https://img.shields.io/badge/CI%2FCD-Active-brightgreen?style=flat-square)
![AWS Cloud](https://img.shields.io/badge/Cloud-AWS-orange?style=flat-square)
![Kubernetes](https://img.shields.io/badge/Container%20Orchestration-Kubernetes-blue?style=flat-square)
![Terraform](https://img.shields.io/badge/IaC-Terraform-7B42BC?style=flat-square)

---

## 💡 About Me: 최원우 (Kim Do-Hyun)

클라우드 환경에서의 안정적인 서비스 구축과 자동화된 운영을 꿈꾸는 **데브옵스/클라우드 엔지니어 김도현**입니다. 저는 반복적인 작업을 자동화하고, 시스템의 안정성과 확장성을 극대화하는 데 열정을 가지고 있습니다. 사용자에게 끊김 없는 서비스를 제공하기 위한 기술적 도전을 즐깁니다.

* **연락처:** [your_email@example.com] | [010-XXXX-XXXX]
* **깃허브:** [GitHub 계정 링크]
* **포부:** **'시스템을 코드로 관리'**하여 빠르고 안정적인 가치를 창출하는 엔지니어가 되겠습니다.

---

## 🛠️ 보유 기술 스택

| 분류 | 기술 스택 | 핵심 사용 도구 |
| :--- | :--- | :--- |
| **Cloud** | AWS (EC2, S3, VPC, IAM, ECR, EKS) | EC2, VPC, Security Group |
| **CI/CD** | Jenkins, Git, Maven, Docker, Tomcat | Jenkins Pipeline, Git Webhook |
| **Container** | Docker, Kubernetes (EKS) | Dockerfile, Kubernetes YAML |
| **IaC** | Terraform | AWS Provider, Module |
| **Language** | Java (Spring), Shell Script | Java 1.8, Bash |

---

## 🚀 프로젝트 경험 요약: 하이브리드 CI/CD 파이프라인 구축

### 1. 프로젝트 개요 및 목표

* **프로젝트명:** Spring Web Project용 하이브리드 클라우드 CI/CD 구축
* **목표:** 기존 **VMware 기반의 레거시 환경**과 **AWS 클라우드**를 통합하고, **단일 Jenkins 파이프라인**으로 다중 환경(Windows, Ubuntu, Docker)에 자동 배포하는 시스템 구현.
* **해결 과제:** 이질적인 OS 환경에 대해 파일 전송 및 서비스 재시작 권한 문제를 해결하고, Maven 기반의 자동 테스트를 통합하여 품질 보증.

### 2. 🗺️ 아키텍처 다이어그램 및 흐름

**Jenkins Controller(AWS EC2)를 중앙 통제실로 사용하고, 3가지 유형의 Agent를 연결하여 작업 부하를 분산했습니다.**
![하이브리드 아키텍처 다이어그램](images/ci_cd_architecture.png)

### 3. CI (지속적 통합) 과정

* **트리거:** GitHub Webhook (`Poll SCM` 방식)을 설정하여 코드 푸시를 즉시 감지.
* **빌드 도구:** **`pom.xml
