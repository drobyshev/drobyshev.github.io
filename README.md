[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/drobyshev/personal-site/blob/master/LICENSE)
[![Build Status](https://travis-ci.org/drobyshev/personal-site.svg?branch=master)](https://travis-ci.org/drobyshev/personal-site)
[![Build status](https://ci.appveyor.com/api/projects/status/0cf58qtb34vwsvry?svg=true)](https://ci.appveyor.com/project/drobyshev/personal-site)

# personal-site
Мой персональный сайт.

## Установка
Клонируем данный репозиторий и заходим в папку, где находится проект
```
git clone https://github.com/drobyshev/personal-site.git
cd personal-site
```
Устанавливаем из npm все необходимые зависимости
```
npm i
npm i -g gulp
```
Собираем проект
```
gulp --require coffeescript/register build
```
Готово, всё необходимое для работы сайта находится в папке build.

Для автоматической сборки проекта, после того как произошли измения в исходниках, нужно выполнить команду
```
gulp --require coffeescript/register watch
```

## Лицензия
Проект создан под MIT лицензией - подробности можно посмотреть здесь [LICENSE.md](https://github.com/drobyshev/personal-site/blob/master/LICENSE).
