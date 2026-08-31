read -p "Set the path file (ej. lib/presentation/providers/counter_provider): " filepath

echo "===== 1. clean corrupt cache ====="
dart run build_runner clean

echo "===== 2. Compile proccess ====="
dart run build_runner build --build-filter="${filepath}.g.dart"

echo "===== Proccess ended ====="
