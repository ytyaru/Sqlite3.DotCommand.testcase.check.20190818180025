SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

# テストケース名を付けずに実行すると引数一覧がみれる
# だが、その使い方や意味がわからない。説明なし。
sqlite3 :memory: .testctrl

sqlite3 :memory: ".testctrl assert true"
sqlite3 :memory: ".testctrl assert no"
sqlite3 :memory: ".testctrl assert yes"
sqlite3 :memory: ".testctrl assert 1"
sqlite3 :memory: ".testctrl assert 0"

