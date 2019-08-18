SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

echo "create table users(
  id integer primary key,
  name text not null,
  class text not null
);
insert into users(name,class) values('Yamada','A');
insert into users(name,class) values('Suzuki','B');
insert into users(name,class) values('Tanaka','A');
" > 2_create.sql

echo "
.separator '\'
.headers off
.mode list
.nullvalue ''

.testcase users_of_class_A
select * from users where class='A';
.check \"1|Yamada|A\n3|Tanaka|A\n\"
" > 2_test.sql

sqlite3 :memory: \
".read 2_create.sql" \
".read 2_test.sql"

cat testcase-out.txt

