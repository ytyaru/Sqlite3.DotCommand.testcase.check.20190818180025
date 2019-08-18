SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

echo "create table T(C text);
insert into T values('A');
insert into T values('B');" > 0_create.sql

echo ".testcase count_all
select count(*) from T;
.check 2" > 0_test.sql

sqlite3 :memory: \
".read 0_create.sql" \
".read 0_test.sql"

cat testcase-out.txt

