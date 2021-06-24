#!/usr/bin/env bash
CHE_TEAM=(cami carlitos charlie cristian cristobal eddwin jeffrey laura pedro)

bashocracia() {
  local size=${#CHE_TEAM[@]}
  echo ${CHE_TEAM[RANDOM % size]}
}
