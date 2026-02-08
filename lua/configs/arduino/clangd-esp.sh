
# for using esp32 with arduino ide
# you may need to chmod +x ./lua/configs/arduino/clangd-esp.sh

exec /usr/bin/clangd \
  --query-driver="~/.arduino15/packages/esp32/tools/**/bin/*" \
  "$@"
