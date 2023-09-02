
CREATE DATABASE HR_CONSULT;
USE HR_CONSULT;


-- Title:tbl roles
CREATE TABLE tbl_roles(
    role_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    role_name VARCHAR(255) NOT NULL,
    role_default VARCHAR (255) NOT NULL,
    created_at DATETIME DEFAULT current_timestamp
    );

-- Title:tbl user
 CREATE TABLE tbl_user(
    user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email_address VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role_id INT NOT NULL, 
    FOREIGN KEY(role_id) REFERENCES tbl_roles(role_id) ON UPDATE CASCADE,
    created_at DATETIME default current_timestamp 
    );



-- Title:tbl_roles to users
CREATE TABLE tbl_roles_to_users(
    tbl_roles_to_users_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL UNIQUE, 
    FOREIGN KEY(user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE,
    role_id INT NOT NULL UNIQUE, 
    FOREIGN KEY(role_id) REFERENCES tbl_roles(role_id)ON UPDATE CASCADE,
    created_at DATETIME DEFAULT current_timestamp
);


-- Title:tbl_rights
CREATE TABLE tbl_rights(
    rights_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    rights_name VARCHAR(255) NOT NULL,
    rights_description LONGTEXT,
    created_at DATETIME DEFAULT current_timestamp
);


-- Title tbl_rights to roles
CREATE TABLE tbl_rights_to_roles(
    rights_to_roles_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    roles_id INT NOT NULL, 
    FOREIGN KEY(roles_id) REFERENCES tbl_roles(role_id),
    rights_id  INT NOT NULL,
    FOREIGN KEY(rights_id) REFERENCES tbl_rights(rights_id) ON UPDATE CASCADE,
    created_at DATETIME DEFAULT current_timestamp

);


-- Title:tbl_user_login
CREATE TABLE tbl_user_login(
    tbl_user_login_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE,
    login_date DATE,
    last_login DATE,
    created_at DATETIME DEFAULT current_timestamp,
    logout DATETIME
);

-- Title:tbl_employee
CREATE TABLE tbl_employee(
    employee_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255)  NULL,
    gender VARCHAR (255) NOT NULL,
    date_of_birth DATE NOT NULL,
    telephone_1 INT NOT NULL,
    telephone_2 INT NULL,
    email_address_1 VARCHAR(255) NOT NULL,
    email_address_2 VARCHAR(255) NULL,
    address VARCHAR(255) NOT NULL,
    marital_status VARCHAR(255) NOT NULL,
    employment_type VARCHAR(255) NOT NULL,
    employment_status VARCHAR(255) NOT NULL,
    next_of_kin VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT current_timestamp
);

-- Table:tbl_next_of_kin
CREATE TABLE tbl_next_of_kin(
next_of_kin_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
next_of_kin_first_name VARCHAR(255) NOT NULL,
next_of_kin_last_name VARCHAR(255) NOT NULL,
next_of_kin_middle_name VARCHAR(255) NULL,
employee_id INT NOT NULL,
 FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE,
address VARCHAR(255) NOT NULL,
telephone INT NOT NULL,
relationship VARCHAR (255) NOT NULL,
created_at DATETIME DEFAULT current_timestamp
);


-- Title:tbl_employment_type
CREATE TABLE tbl_employment_type(
    tbl_employment_type_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    employee_id INT NOT NULL, 
    FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE,
    employment_type VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT current_timestamp
);

-- Title:tbl_employment_status
CREATE TABLE tbl_employment_status(
    tbl_employment_status_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
     employee_id INT NOT NULL, 
     FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE,
     employment_status VARCHAR(255) NOT NULL,
     created_at DATETIME DEFAULT current_timestamp

);

-- Title:tbl_departments
CREATE TABLE tbl_departments(
    department_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    manager_id INT NOT NULL,
    FOREIGN KEY(manager_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE,
    department_name VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT current_timestamp

);


-- Title:tbl_employee_other_details
CREATE TABLE tbl_employee_other_details(
    employee_other_details_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    employee_id INT NOT NULL,
    FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE,
    nationality VARCHAR(255) NOT NULL,
    language VARCHAR(255) NOT NULL,
    employee_title VARCHAR(255) ,
    created_at DATETIME DEFAULT current_timestamp



);

-- Title:tbl_language
CREATE TABLE tbl_language(
    language_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    language_name VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT current_timestamp

);

-- Title:tbl_nationality
CREATE TABLE tbl_nationality(
    nationality_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nationality_name VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT current_timestamp

);

-- Title:tbl_jobs
CREATE TABLE tbl_jobs(
    job_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    job_type VARCHAR (255) NOT NULL,
    maximum_number_of_positions INT NOT NULL,
    valid_from_date DATE,
    valid_to_date DATE,
    created_at DATETIME DEFAULT current_timestamp

);

-- Title:tbl_designation
CREATE TABLE tbl_designation(
    designation_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    designation_name VARCHAR(255) NOT NULL,
    valid_from_date DATE,
    valid_to_date DATE,
    created_at DATETIME DEFAULT current_timestamp

);

-- Title:tbl_qualification--
CREATE TABLE tbl_qualification(
    qualification_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    qualification_name VARCHAR(255) NOT NULL,
    qualification_type VARCHAR(255) NOT NULL,
    awarding_institution VARCHAR(255) NOT NULL,
    year_awarded DATE,
    employee_id INT NOT NULL, 
    FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE,
    skills_and_competencies LONGTEXT,
     created_at DATETIME DEFAULT current_timestamp
);


-- Title: skills_and_competencies--
CREATE TABLE skills_and_competencies (
    skills_and_competencies_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL ,
    qualification_id INT,
    FOREIGN KEY (qualification_id) REFERENCES tbl_qualification(qualification_id)  ON UPDATE CASCADE,
    skill_name LONGTEXT,
    COMPETENCY LONGTEXT,
    created_at DATETIME DEFAULT current_timestamp
);

-- Title:tbl_benefit_plan
CREATE TABLE tbl_benefit_plan(
    benefit_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    employee_id INT NOT NULL, 
    FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE,
    benefit_name VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT current_timestamp

);

-- Title:tbl_leave_type
CREATE TABLE tbl_leave_type(
    leave_type_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    leave_type_name VARCHAR(255) NOT NULL,
    description LONGTEXT NOT NULL,
    created_at DATETIME DEFAULT current_timestamp

);


-- Title:tbl_leave--
CREATE TABLE tbl_leave(
    leave_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    leave_type_id INT NOT NULL,
    leave_name VARCHAR(255) NOT NULL,
    leave_start_date DATE NOT NULL,
    leave_end_date DATE NOT NULL,
    leave_balance INT NOT NULL,
    FOREIGN KEY(leave_type_id) REFERENCES tbl_leave_type(leave_type_id) ON UPDATE CASCADE
);

-- Title:tbl_leave_request--
CREATE TABLE tbl_leave_request(
    leave_request_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    leave_type_id INT NOT NULL,
    employee_id INT NOT NULL,
    leave_request_status VARCHAR(255),
    leave_request_date DATE,
    leave_request_details LONGTEXT NOT NULL,
    created_at DATETIME DEFAULT current_timestamp,
    FOREIGN KEY(leave_type_id) REFERENCES tbl_leave_type(leave_type_id) ON UPDATE CASCADE,
    FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE

);

-- Title:tbl_employee_employment_history --
CREATE TABLE tbl_employee_employment_history (
  employment_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  employee_id INT(11) NOT NULL,
  company_name VARCHAR(255) NOT NULL,
  start_date date NOT NULL,
  end_date date NOT NULL,
  job_positions  VARCHAR(255) NOT NULL,
   FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE
) ;



-- Table structure for table `tbl_employee_performance`--


CREATE TABLE tbl_employee_performance (
  performance_id  INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  employee_id INT(11) NOT NULL,
  goals VARCHAR(255)  NULL,
  achievements VARCHAR(255)  ,
  areas_for_improvement VARCHAR(255)  ,
 evaluation_date date NOT NULL,
  FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE
) ;

-- Table structure for table `tbl_documents`--
CREATE TABLE tbl_employee_documents (
  employee_documents_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  employee_id INT(11) NOT NULL,
  document_type VARCHAR(255) NOT NULL,
  document_name VARCHAR(255) NOT NULL,
  document_file BLOB NOT NULL,
  upload_date DATETIME DEFAULT current_timestamp(),
  document_content LONGTEXT NOT NULL,
  FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE
) ;

-- Table structure for table `tbl_performance_review`--
CREATE TABLE  tbl_performance_review (
  review_id  INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  employee_id INT(11) NOT NULL,
  review_date DATE NOT NULL,
  performance_rating VARCHAR(255) NOT NULL,
  comments TEXT ,
  FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE
) ;
-- Table structure for table `tbl_training_programs`
--
CREATE TABLE tbl_training_programs (
  training_program_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  program_name VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
   start_date DATE NOT NULL,
   end_date DATE NOT NULL,
  trainer_details VARCHAR(500) NOT NULL,
  associated_costs DECIMAL(10,3) NOT NULL DEFAULT 0.000
);

-- Table structure for table `tbl_employee_training`
--

CREATE TABLE tbl_employee_training (
  employee_training_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  employee_id INT(11) NOT NULL,
  training_program_id INT(11) NOT NULL,
  completion_date DATE NOT NULL,
  certification_obtained BLOB NOT NULL,
  FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE,
  FOREIGN KEY(training_program_id) REFERENCES tbl_training_programs(training_program_id) ON UPDATE CASCADE
) ;

-- Table structure for table `tbl_employee_rewards`
--

CREATE TABLE tbl_employee_rewards (
  employee_reward_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  employee_id INT NOT NULL,
  reward_type VARCHAR(255) NOT NULL,
  reward_reason TEXT NOT NULL,
  bonus DECIMAL(10, 2),
  reward_date DATE NOT NULL,
  FOREIGN KEY (employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE
);

-- Table structure for table `tbl_employee_feedback`
CREATE TABLE employee_feedback (
  employee_feedback_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  employee_id INT(11) NOT NULL,
  feedback_type VARCHAR(255) NOT NULL,
  feedback_date DATE NOT NULL,
  feedback_text VARCHAR(500),
     FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE
);
-- Table structure for table `tbl_insurance`
--

CREATE TABLE tbl_insurance (
  insurance_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  benefit_id INT(11) NOT NULL,
  employee_id INT(11) NOT NULL,
  insurance_provider VARCHAR(255) NOT NULL,
  insurance_type VARCHAR(255) NOT NULL,
  policy_start_date DATE NOT NULL,
  policy_end_date DATE NOT NULL,
  premium_amount DECIMAL(10,5) NOT NULL,
  deductable DECIMAL(10,5) NOT NULL,
  duration VARCHAR(255) NOT NULL,
  insurance_status VARCHAR(255) NOT NULL,
  Renewal_date DATE NOT NULL,
   FOREIGN KEY(benefit_id) REFERENCES tbl_benefit_plan(benefit_id) ON UPDATE CASCADE,
     FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE
);

-- Table structure for tbl_deductions--

CREATE TABLE tbl_deductions (
    deduction_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    employee_id INT NOT NULL,
    deduction_type VARCHAR(255) NOT NULL,
    deduction_date DATE NOT NULL,
    deduction_amount DECIMAL(10, 2) NOT NULL,
    deduction_frequency VARCHAR(255) NOT NULL,
    FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE
 );


-- Table structure for tbl_allowance-

CREATE TABLE tbl_allowance (
    allowance_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    employee_id INT NOT NULL,
    allowance_name VARCHAR(255) NOT NULL,
   allowance_date DATE NOT NULL,
    allowance_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE
 );



-- Table structure for table `tbl_payroll`
--
CREATE TABLE tbl_payroll (
    payroll_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    allowance_id INT NOT NULL,
    deduction_id INT NOT NULL,
    employee_id INT NOT NULL,
    payroll_date DATE NOT NULL,
    basic_salary DECIMAL(10, 2) NOT NULL,
    total_allowance DECIMAL(10, 2) DEFAULT 0.00,
    total_deduction DECIMAL(10, 2) DEFAULT 0.00,
    net_pay DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY(employee_id) REFERENCES tbl_employee(employee_id) ON UPDATE CASCADE,
  FOREIGN KEY (deduction_id) REFERENCES tbl_deductions(deduction_id) ON UPDATE CASCADE,
  FOREIGN KEY (allowance_id) REFERENCES tbl_allowance(allowance_id) ON UPDATE CASCADE
);
