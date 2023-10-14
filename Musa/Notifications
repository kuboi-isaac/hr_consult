CREATE TABLE tbl_notifications(
    notifications_id int primary key not null auto_increment,
    user_id int not null,
    sender_id int not null UNIQUE NOT NULL,
    notifications_type varchar(255) not null,
    message varchar(255)NOT NULL,
    archived boolean not null,
    link varchar(255) NOT NULL,
    delivery_status Varchar(255) NOT null,
    FOREIGN KEY (user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE,
    FOREIGN KEY (sender_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE,
    created_at  DATETIME default current_timestamp
);
CREATE TABLE tbl_salary_notifications (
    notification_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    salary_change DECIMAL(10, 2) NOT NULL,
    effective_date DATE NOT NULL,
    archived BOOLEAN NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE
);
CREATE TABLE tbl_role_change_notifications (
    notification_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    new_role VARCHAR(255) NOT NULL,
    effective_date DATE NOT NULL,
    archived BOOLEAN NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE
);
CREATE TABLE tbl_password_change_notifications (
    notification_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    archived BOOLEAN NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE
);
CREATE TABLE tbl_leave_notifications (
    notification_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    leave_type VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(255) NOT NULL,
    archived BOOLEAN NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE
);
CREATE TABLE tbl_department_change_notifications (
    notification_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    new_department VARCHAR(255) NOT NULL,
    effective_date DATE NOT NULL,
    archived BOOLEAN NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE
);
CREATE TABLE tbl_appraisal_notifications (
    notification_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    appraisal_date DATE NOT NULL,
    result VARCHAR(255) NOT NULL,
    archived BOOLEAN NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE
);
CREATE TABLE tbl_hr_communication_notifications (
    notification_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    message TEXT NOT NULL,
    archived BOOLEAN NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE
);
CREATE TABLE tbl_account_status_notifications (
    notification_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    account_status VARCHAR(255) NOT NULL,
    reason TEXT,
    effective_date DATE NOT NULL,
    archived BOOLEAN NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE
);
CREATE TABLE tbl_survey_notifications (
    notification_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    survey_id INT NOT NULL,
    archived BOOLEAN NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE,
    
);
CREATE TABLE tbl_job_posting_notifications (
    notification_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    job_posting_id INT NOT NULL,
    archived BOOLEAN NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE,
    
);