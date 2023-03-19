---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
author: "Munir Hossain"
year: "{{ dateFormat "2006" .Date }}"
month: "{{ dateFormat "2006/01" .Date}}"
draft: false
categories:
  - Personal
  - Thoughts
tags:
  - software
  - html
---

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua.

<!--more-->

Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
aliquip ex ea commodo consequat.