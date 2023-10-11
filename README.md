# edgecraft-caaph

- Edgecraft에서 동작하는 22개의 Application을 배포하기 위한 Cluster API Addon Provider for Helm 구성입니다.
- CAPI를 통해서 생성한 클러스터에 일괄적으로 22개의 Application을 Label 적용에 따라서 설치 또는 제거하는 방식으로 동작합니다.
- 소스 구성은 Helm의 Subchart 방식을 사용합니다.

## Installation

### Helm Repo 등록

```bash
$ helm repo add edgecraft https://acornsoft-edgecraft.github.io/edgecraft-caaph/
$ helm repo update
```


