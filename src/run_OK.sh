SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
".testcase test_name_0" \
"select 'A'='A';" \
".check 1"

cat testcase-out.txt

