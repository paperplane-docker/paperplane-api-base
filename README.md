# `paperplanecc/paperplane-api-base` [![Build Status](https://drone.paperplane.cc/api/badges/paperplane-docker/paperplane-api-base/status.svg)](https://drone.paperplane.cc/paperplane-docker/paperplane-api-base)

## 简介

本镜像 [`paperplanecc/paperplane-api-base`](https://hub.docker.com/r/paperplanecc/paperplane-api-base) 为项目 `paperplane-web-console`（[源码](https://git.paperplane.cc/jia-niang/paperplane-web-console)，[Github](https://github.com/jia-niang/paperplane-web-console)） 提供预装了各种所需软件的运行环境。

点此访问 [源码](https://git.paperplane.cc/paperplane-docker/paperplane-api-base)。

镜像中已经安装了 `pnpm@10.4.0`，请留意项目中 `package.json` 的 `packageManager` 字段，如果大版本号不符合，将无法使用。

## 私有版本

将 `paperplanecc` 替换为 `docker.p01.cc` 即可使用私有库版本。点此访问 [私有库镜像](https://docker.p01.cc/#!/taglist/paperplane-api-base)。

私有版本和公开版本目前没有区别。

## 用法

同 [`node:20.13.0`](https://hub.docker.com/_/node) 镜像一样，但此镜像中已安装了处于开箱可用的状态的 Chromium 和 Git，对于 `puppeteer` 和 `simple-git` 用户而言，可以直接使用此镜像进行开发。

请注意默认用户是 `root`，因此 `puppeteer` 启动时，需要配置 `args: ['--no-sandbox']` 参数。