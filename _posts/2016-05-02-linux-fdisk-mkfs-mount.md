---
layout: post
title:  "linux에서 fdisk 사용해서 파티션 설정하고 마운트 하는법"
author: "minsik.yoon"
date: 2016-05-02 
---

## linux에서 fdisk 사용해서 파티션 설정하고 마운트 하는법

### 1. fdisk 로 파티션 설정

* 먼저 파티션 설정 상태를 확인한다.

```bash
$ fdisk -l 
```

* command mode 로 들어가서 작업한다.(/dev/sdb 로 가정)

```bash
$ fdisk /dev/sdb
```

* `n`을 눌러서 새로운 파티션을 생성한다.
* `primary`로 할건지 `extended`로 설정한건지 묻는게 나오는데
  - 파티션이 4개 이하면 primary로 하면 되고 그 이상이면 extended로
* 용량설정은 원하는 사이즈로 하면 되고 전체로 할경우 계속 엔터를 눌러서 넘어가면 된다.
* `w`를 눌러서 저장하고 `q`를 눌러서 빠져나온다.

### 2. 파티션 포맷

```bash
$ mkfs.ext4 /dev/sdb1
```

### 3. 마운트

```bash
$ mount /dev/sdb1 /home
```
