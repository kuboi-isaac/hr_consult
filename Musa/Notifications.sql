    CREATE TABLE tbl_notifications(
    notifications_id int primary key not null auto_increment,
    receipt_id int not null,
    sender_id int not null UNIQUE NOT NULL,
    notifications_type varchar(255) not null,
    notification_message varchar(255)NOT NULL,
    archived boolean not null,
    link varchar(255) NOT NULL,
    delivery_status Varchar(255) NOT null,
    FOREIGN KEY (receipt_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE,
    FOREIGN KEY (sender_id) REFERENCES tbl_user(user_id) ON UPDATE CASCADE,
    created_at  DATETIME default current_timestamp
);