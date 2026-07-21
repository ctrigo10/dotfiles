#!/usr/bin/env bash

#######################################
# Colores
#######################################

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

#######################################
# Mensajes
#######################################

print_header() {
  echo ""
  echo -e "${BLUE}========================================${NC}"
  echo -e "${BLUE}$1${NC}"
  echo -e "${BLUE}========================================${NC}"
}

print_success() {
  echo -e "${GREEN}✔ $1${NC}"
}

print_warning() {
  echo -e "${YELLOW}⚠ $1${NC}"
}

print_error() {
  echo -e "${RED}✖ $1${NC}"
}

#######################################
# Helpers
#######################################

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

package_installed() {
  dpkg -s "$1" >/dev/null 2>&1
}

require_sudo() {
  print_header "Requesting administrator privileges"

  sudo -v

  print_success "Privileges granted"
}

#######################################
# Helpers
#######################################

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

package_installed() {
    dpkg -s "$1" >/dev/null 2>&1
}

require_sudo() {
    print_header "Requesting administrator privileges"

    sudo -v

    print_success "Privileges granted"
}