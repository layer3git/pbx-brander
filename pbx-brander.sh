#!/bin/bash

if ! grep 'intellicom-logo-white.png' /opt/pbxware/pw/home/sitemanager/admin/css/login.css &>/dev/null; then
  cat <<EOF >> /opt/pbxware/pw/home/sitemanager/admin/css/login.css

#logo {
  background: url('./intellicom-logo-white.png') center center no-repeat !important;
  background-size: 75% !important;
}
EOF

if ! grep 'intellicom-logo-white.png' /opt/pbxware/pw/home/sitemanager/admin/css/main_flex.css &>/dev/null; then
  cat <<EOF >> /opt/pbxware/pw/home/sitemanager/admin/css/main_flex.css

.logo {
  background: url('./intellicom-logo-white.png') center center no-repeat !important;
  background-size: 100% !important;
}
EOF

mkdir -p mkdir /opt/pbxware/pw/home/sitemanager/admin/css/img
curl -L 'https://github.com/layer3git/pbx-brander/raw/master/intellicom-logo-white.png' >/opt/pbxware/pw/home/sitemanager/admin/css/img/intellicom-logo-white.png
