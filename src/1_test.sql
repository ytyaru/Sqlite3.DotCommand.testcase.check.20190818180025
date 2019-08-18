.testcase users_of_class_A
select * from users where class='A';
.check "1|Yamada|A\n3|Tanaka|A\n"

