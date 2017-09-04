[![Build Status](https://travis-ci.org/drobyshev/drobyshev.github.io.svg?branch=master)](https://travis-ci.org/drobyshev/drobyshev.github.io)
[![Build status](https://ci.appveyor.com/api/projects/status/ympe31wewpmoex70/branch/master?svg=true)](https://ci.appveyor.com/project/drobyshev/drobyshev-github-io)

# drobyshev.github.io
Мой персональный сайт.

## Установка
Клонируем данный репозиторий и заходим в папку, где находится проект
```
git clone https://github.com/drobyshev/drobyshev.github.io.git
cd drobyshev.github.io
```
Устанавливаем из `npm` все необходимые зависимости
```
npm i
npm i -g gulp
```
Собираем проект
```
gulp --require coffee-script/register build
```
Готово, всё необходимое для работы сайта находится в папке `dist`.

Для того что проект автоматически пересобирался, после того как произошли измения в его исходниках, нужно выполнить команду
```
gulp --require coffee-script/register
```

## Лицензия
Данный проект создан под `MIT` лицензией - подробности можно посмотреть здесь [LICENSE.md](https://github.com/drobyshev/drobyshev.github.io/blob/master/LICENSE).
