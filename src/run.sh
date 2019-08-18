SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

./run_NG.sh
./run_OK.sh
./run_sql.sh
./run_sql_multi_line.sh
./run_sql_init_format.sh

