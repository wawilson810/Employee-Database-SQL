create table titles (
	title_id varchar(5) primary key,
	title varchar(30)
);

create table employees (
	emp_no integer primary key,
	emp_title_id varchar(5),
	birth_date varchar(10),
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(1),
	hire_date varchar(10),
	foreign key (emp_title_id) references titles (title_id)
);

create table salaries (
	emp_no integer primary key,
	salary integer,
	foreign key (emp_no) references employees (emp_no)
);

create table departments (
	dept_no varchar(5) primary key,
	dept_name varchar(20)
);

create table dept_manager (
	dept_no varchar(5),
	emp_no integer,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key(emp_no, dept_no)
);

create table dept_emp (
	emp_no integer,
	dept_no varchar(5),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key(emp_no, dept_no)
);