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

_color256_c() {
  echo -en "\e[48;5;$1m"
  if [[ $1 -lt 10 ]]; then
    echo -n " $1 "
  elif [[ $1 -lt 100 ]]; then
    echo -n " $1"
  else
    echo -n "$1"
  fi
  echo -en "\e[49m "
}

color256() {
  local i j offset

  echo -en "\e[38;5;16m"
  for ((i = 0; i < 8; i++)); do _color256_c $i; done
  echo
  for ((i = 0; i < 8; i++)); do _color256_c $((i + 8)); done
  echo
  echo

  for ((k = 0; k < 2; k++)); do
    for ((j = 0; j < 6; j++)); do
      ((offset = k * 36 * 3 + 16))
      for ((i = 0; i < 6; i++)); do _color256_c $((j * 6 + i + offset)); done
      echo -n " "
      ((offset += 36))
      for ((i = 0; i < 6; i++)); do _color256_c $((j * 6 + i + offset)); done
      echo -n " "
      ((offset += 36))
      for ((i = 0; i < 6; i++)); do _color256_c $((j * 6 + i + offset)); done
      echo
    done
    echo
  done

  for ((j = 0; j < 3; j++)); do
    for ((i = 0; i < 8; i++)); do _color256_c $((j * 8 + i + 232)); done
    echo
  done
  echo -en "\e[0m"
}
