#!/usr/bin/env bash

rutv() {
  # De derecha a izquierda se multiplica cada digito por el elemento
  # correspondiente en la serie rotativa 234567 y se obtiene el modulo 11 de la
  # suma de los productos. Se obtiene el complemento de 11 para ese resto. Si es
  # 10 se reemplaza por K, si es 11 se reemplaza por 0
  len=${#1}
  v=0
  for (( i=0; i<$len; i++ )); do
    pos=$((len - i - 1))
    v=$((v + ${1:$pos:1} * (i % 6 + 2)))
  done
  v=$((v % 11))
  v=$((11 - v))
  if [[ v -eq 10 ]]; then v='K'; fi
  if [[ v -eq 11 ]]; then v=0; fi
  echo $1-$v
}
