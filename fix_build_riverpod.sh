echo "===== 1. Deactivate build_runner from global ====="
dart pub global deactivate build_runner 2> /dev/null

echo "===== 2. Cleanning flutter cache ====="
flutter clean

echo "===== 3. Enabling build_runner again ======"
dart run build_runner clean