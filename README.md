#jenkins_project
# 🌟 데브옵스 & 클라우드 기술 포트폴리오

![GitHub Actions 뱃지](https://img.shields.io/badge/CI%20Status-Passing-brightgreen)
![AWS 뱃지](https://img.shields.io/badge/Cloud-AWS-orange)
![Kubernetes 뱃지](https://img.shields.io/badge/Orchestration-Kubernetes-blue)

---

## 💡 ABOUT ME & 프로젝트 개요

안녕하세요! 클라우드 인프라와 CI/CD 자동화에 관심 있는 [본인 이름]입니다. 본 레포지토리는 제가 수행한 **클라우드 구축 및 데브옵스 자동화** 프로젝트들의 핵심 아키텍처와 기술적 과정을 정리한 공간입니다.

저는 **안정성, 확장성, 인프라의 코드화(IaC)**를 핵심 가치로 두고 있습니다.

---

## 🛠️ 핵심 프로젝트 요약

### 1. 🚀 하이브리드 CI/CD 파이프라인 구축 (Jenkins + VMWare + AWS)

* **목표:** 기존 온프레미스(VMWare) 환경과 AWS 클라우드를 통합하여 배포 자동화.
* **주요 기술:** **Jenkins Controller(EC2)**, Jenkins Agent(Windows, Ubuntu, Docker), Maven 빌드, Git Webhook.
* **성취:** 세 가지 이질적인 환경에 대한 **단일 파이프라인** 구현 및 배포 시간 90% 단축.

**전체 아키텍처 다이어그램:**
![하이브리드 아키텍처 다이어그램](images/ci_cd_architecture.png)

### 2. 🌐 AWS 인프라 자동화 (Terraform & EKS)

* **목표:** 쿠버네티스(EKS) 클러스터와 VPC 네트워크 환경 전체를 코드로 관리.
* **주요 기술:** **Terraform**, AWS EKS, AWS VPC, Kubernetes Ingress/Service.
* **성취:** 클릭 한 번으로 수백 개의 클라우드 리소스를 10분 내에 **반복 가능하게** 구축하는 IaC 환경 구현.

---

## ✅ CI/CD 빌드 성공 입증 (Proof of Work)

Git Push 후 Jenkins에서 자동 테스트를 포함한 빌드가 성공적으로 완료되었음을 보여주는 로그입니다.

```bash
[INFO] Tests run: 5, Failures: 0, Errors: 0, Skipped: 0
[INFO] BUILD SUCCESS
