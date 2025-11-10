# 👑 김도현의 심화 데브옵스 & 클라우드 엔지니어링 포트폴리오

![CI/CD Status](https://img.shields.io/badge/CI%2FCD-Active-brightgreen?style=flat-square)
![AWS Cloud](https://img.shields.io/badge/Cloud-AWS-orange?style=flat-square)
![Containerization](https://img.shields.io/badge/Containerization-Docker%2FK8s-blue?style=flat-square)
![IaC](https://imgings.io/badge/IaC-Terraform-7B42BC?style=flat-square)
![Java](https://img.shields.io/badge/Language-Java-007396?style=flat-square)

---

## 💡 About Me: 김도현 (Kim Do-Hyun)

클라우드 환경에서 **안정성과 확장성**을 최우선으로 시스템을 설계하고 자동화하는 **데브옵스/클라우드 엔지니어** 김도현입니다. 저는 **반복적인 운영 작업을 코드로 전환**하여 휴먼 에러를 제거하고, 개발 주기를 단축하는 데 기여하는 것을 목표로 합니다.

* **핵심 역량:** 복잡한 레거시 시스템을 클라우드 환경으로 마이그레이션하고, CI/CD 파이프라인을 구축하여 서비스의 가용성(Availability)을 높이는 데 특화되어 있습니다.
* **연락처:** [your_email@example.com] | [010-XXXX-XXXX]
* **깃허브:** [GitHub 계정 링크]
* **포부:** **'인프라의 코드화(IaC)'**를 통해 비즈니스 요구사항에 **가장 빠르게 대응**하는 인프라 환경을 구축하는 엔지니어가 되겠습니다.

---

## 🛠️ 보유 기술 스택 및 숙련도

| 분류 | 기술 스택 | 숙련도 | 주요 활용 경험 |
| :--- | :--- | :--- | :--- |
| **Cloud** | AWS (EC2, S3, VPC, IAM, ECR, EKS) | **High** | 3-Tier 아키텍처 설계 및 네트워크(VPC, Subnet, Routing) 구성. |
| **CI/CD** | Jenkins, Git, Maven, Tomcat | **High** | Pipeline Script 작성, Multi-Agent 구성, `pom.xml` 기반 테스트 통합. |
| **Container** | Docker, Kubernetes (EKS) | **Medium** | Dockerfile 작성, Container Registry(ECR) 연동, EKS 클러스터 구성. |
| **IaC** | Terraform | **Medium** | AWS VPC/EC2 리소스 모듈화 및 반복 배포 스크립트 작성. |
| **Language** | Java (Spring), Shell Script | **Medium** | Spring Web 기반 애플리케이션 개발 경험, 배포 자동화 스크립트 작성. |

---

## 🚀 프로젝트 1. 하이브리드 클라우드 기반 CI/CD 파이프라인 구축

### 1. 프로젝트 개요 및 목표

* **프로젝트명:** Spring Web Project용 하이브리드 클라우드 CI/CD 구축
* **목표:** 기존 **VMware 기반의 레거시 환경**과 **AWS 클라우드 환경**을 통합하고, **단일 Jenkins 파이프라인**으로 다중 환경(Windows, Ubuntu, Docker)에 자동 배포하는 시스템 구현.
* **사용 기술:** Jenkins Controller (AWS EC2), Jenkins Agent (Windows 10, Ubuntu, Docker Host), Maven, Spring MVC, Tomcat 9.x.

### 2. 🗺️ 아키텍처 설계 및 구성

AWS EC2 인스턴스에 Jenkins Controller를 설치하고, 보안 그룹(Security Group) 및 VPC 설정을 통해 온프레미스 VM (Agent)과의 SSH 통신 경로를 확보했습니다.

* **Controller:** AWS EC2 (t2.medium)에 Jenkins 설치, GitHub Webhook 및 Job 설정 관리.
* **Agent 구조:** Jenkins Master-Slave (Controller-Agent) 구조를 활용하여 빌드/배포 작업을 Agent에 위임, Controller의 부하를 최소화.
* **소스 관리:** GitHub에 코드를 저장하고 Jenkins와 연동.

![하이브리드 아키텍처 다이어그램](images/ci_cd_architecture.png)

### 3. CI (지속적 통합) 과정 및 품질 보증

| 단계 | 기술적 의사결정 | 성과 |
| :--- | :--- | :--- |
| **코드 감지** | **Poll SCM** 방식을 활용하여 1분 간격으로 GitHub의 변경 사항을 주기적으로 감지. (최신 코드를 유지) | 코드 변경 시 **자동 트리거** 구현, 수동 빌드 필요성 제거. |
| **빌드 & 테스트** | **Maven `pom.xml`**을 통해 **Java 1.8** 환경 지정 및 **JUnit 5** 자동 테스트 통합. | **5개의 단위 테스트**를 강제 실행하여 코드 병합 전에 버그를 조기에 발견. |
| **Artifact 생성** | 빌드 성공 시, 최종 결과물인 `hello-world.war` 파일을 `target` 디렉토리에 생성. | 배포용 아티팩트의 **표준화** (WAR 파일). |

### 4. CD (지속적 배포) 과정 및 환경 통합

빌드된 `hello-world.war` 파일을 Jenkins Agent가 3가지 상이한 환경에 배포하는 과정을 자동화했습니다.

* **배포 방식:** **Tomcat 9.x Remote Deployment Plugin**을 사용하여 WAR 파일을 각 Tomcat 서버의 `webapps` 디렉토리에 전송 및 자동 재시작.
* **Windows 환경:** Windows Agent에 권한을 부여하고, `C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps`에 WAR 파일을 안전하게 복사.
* **Docker 환경:** Docker Host Agent에서 미리 설정된 Tomcat 이미지를 활용하여 WAR 파일만 교체 후 컨테이너 재시작. **(컨테이너 기반 환경 배포 경험 증명)**

---

## ✅ 핵심 성과 입증 (Proof of Work)

### 1. 최종 CI/CD 성공 로그

Git Push 후 테스트가 오류 없이 통과하며, 빌드 과정 전체가 성공적으로 완료되었음을 증명합니다.

```bash
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Tests run: 5, Failures: 0, Errors: 0, Skipped: 0
[INFO] ------------------------------------------------------------------------
