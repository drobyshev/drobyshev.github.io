[![Build Status](https://travis-ci.org/drobyshev/drobyshev.github.io.svg?branch=master)](https://travis-ci.org/drobyshev/drobyshev.github.io)

# drobyshev.github.io
Мой персональный сайт с сылками на мой профили в интернете.

## Установка
Клонируем этот репозиторий и заходим в папку, где находиться проект
```
git clone https://github.com/drobyshev/drobyshev.github.io.git
cd drobyshev.github.io.git
```
Устанавливаем из `npm` все необходимые зависимости
```
npm install
```
Собираем проект
```
gulp --require coffee-script/register build
```
Готово, всё неоходимое для работы сайта находится в папке `dist`.

## Немного автоматизации

Что бы каждый раз не набирать в терминале команду
```
gulp --require coffee-script/register build
```
в файл `./bash_profile`, нужно добавить добавить строку 
```
alias gulp="gulp --require coffee-script/register"
```
Теперь проект можно собрать командой `gulp build`.

Для того что проект автоматически пересобирался, после того как произошли измениня в его исходниках, нужно выполнить команду `gulp` без параметров.

## Лицензия
Проект создан под `MIT` лицензией - подробности смотреть здесь [LICENSE.md](https://github.com/drobyshev/drobyshev.github.io/blob/master/LICENSE).
