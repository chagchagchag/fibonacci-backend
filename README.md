## 개발환경

- Spring Boot, Redis, K8s
- Database 는 이번 프로젝트에서 구현범위에서 제외했습니다.
- 이번 예제에서 사용중인 K8s 를 구동시키기 위해서는 [Kind](https://kind.sigs.k8s.io/) 가 필요합니다.
- [Kind](https://kind.sigs.k8s.io/) 설치는 [Quick Start](https://kind.sigs.k8s.io/docs/user/quick-start/) 를 참고하세요.
- 또는 [쿠버네티스 로컬 개발환경으로 kind 를 써보자](https://github.com/chagchagchag/eks-k8s-docker-study-archive/blob/main/local-k8s-kind/%EC%BF%A0%EB%B2%84%EB%84%A4%ED%8B%B0%EC%8A%A4%20%EB%A1%9C%EC%BB%AC%20%EA%B0%9C%EB%B0%9C%20%ED%99%98%EA%B2%BD%EC%9C%BC%EB%A1%9C%20Kind%20%EB%A5%BC%20%EC%8D%A8%EB%B3%B4%EC%9E%90.md) 를 참고하세요.

<br>



## start

로컬에서 구동을 위해 kind 가 필요한데 [kind.sigs.k8s.io](https://kind.sigs.k8s.io/) 에서 다운로드 받아서 설치하시면 됩니다.

```bash
$ cd k8s/sh
$ source start.sh
$ curl http://localhost/fibonacci/2
2
$ curl http://localhost/fibonacci/11?api-key=abcd-efgh-ijkl-1111
89
```

<br>



## 배포

**ArgoCD**<br>

이 프로젝트는 로컬에서 로컬클러스터에 ArgoCD를 설치합니다. 

로컬 클러스터에 ArgoCD 를 설치하는 과정은 [README.md](https://github.com/chagchagchag/eks-k8s-docker-study-archive/blob/main/local-k8s-kind/yml/README.md) 를 참고해주세요.

ArgoCD 설치과정은 추후 별도의 문서와 예제로 따로 정리해두고 URL을 명시하겠습니다.<br>

<br>



**Helm**<br>

개발환경은 Helm 으로 전환작업중입니다. 80% 정도 구현해두었고, 이것 저것 확인작업 등을 하느라 잠시 멈춰두었습니다.<br>

<br>



**Kustomize**<br>

운영환경으로의 배포는 Kustomize 로 전환작업 중입니다. Kustomize 스크립트 작업중이어서 진행정도는 20% 입니다.<br>

<br>



**Rollout 배포**<br>

ArgoCD 에서는 Rollout 배포를 지원하는데, 이번 프로젝트는 Rollout 기반의 무중단 배포프로세스를 구현할 예정입니다. Kustomize 작업이 완료 된 후 Rollout 배포 프로세스 작업을 시작하고, Rollout 배포 과정과 개념들을 문서로 정리해둘 예정입니다.<br>

<br>





