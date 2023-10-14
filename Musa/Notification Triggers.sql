--Trigger for Salary Change Notification:
DELIMITER //
CREATE TRIGGER trg_salary_change
AFTER INSERT ON tbl_salary_
FOR EACH ROW
BEGIN
    -- Insert a new notification into the notification table
    INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
    VALUES (NEW.user_id, 'Salary Change', CONCAT('Your salary has been changed to /=', NEW.salary_change), 0, '', 'Pending');
END;
//
DELIMITER ;

-- Trigger for Role Change Notification:
DELIMITER //
CREATE TRIGGER trg_role_change
AFTER INSERT ON tbl_role
FOR EACH ROW
BEGIN
    -- Insert a new notification into the notification table
    INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
    VALUES (NEW.user_id, 'Role Change', CONCAT('Your role has been changed to ', NEW.new_role), 0, '', 'Pending');
END;
//
DELIMITER ;

-- Trigger for Leave Notification:
DELIMITER //
CREATE TRIGGER trg_leave
AFTER INSERT ON tbl_leave
FOR EACH ROW
BEGIN
    -- Insert a new notification into the notification table
    INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
    VALUES (NEW.user_id, 'Leave Request', CONCAT('Your leave request for ', NEW.leave_type, ' from ', NEW.start_date, ' to ', NEW.end_date, ' is ', NEW.status), 0, '', 'Pending');
END;
//
DELIMITER ;

-- Trigger for Password Change Notification:
DELIMITER //
CREATE TRIGGER trg_password_change
AFTER INSERT ON tbl_user
FOR EACH ROW
BEGIN
    -- Insert a new notification into the notification table
    INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
    VALUES (NEW.user_id, 'Password Change', 'Your password has been changed.', 0, '', 'Pending');
END;
//
DELIMITER ;

-- Trigger for Department Change Notification:
DELIMITER //
CREATE TRIGGER trg_department_change
AFTER INSERT ON tbl_departments
FOR EACH ROW
BEGIN
    -- Insert a new notification into the notification table
    INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
    VALUES (NEW.user_id, 'Department Change', CONCAT('Your department has been changed to ', NEW.new_department), 0, '', 'Pending');
END;
//
DELIMITER ;

-- Trigger for Appraisal Notification:
DELIMITER //
CREATE TRIGGER trg_appraisal
AFTER INSERT ON tbl_appraisal
FOR EACH ROW
BEGIN
    -- Insert a new notification into the notification table
    INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
    VALUES (NEW.user_id, 'Appraisal', CONCAT('Your appraisal result is: ', NEW.result), 0, '', 'Pending');
END;
//
DELIMITER ;

--Trigger for HR Communication Notification:
DELIMITER //
CREATE TRIGGER trg_hr_communication
AFTER INSERT ON tbl_hr_communication
FOR EACH ROW
BEGIN
    -- Insert a new notification into the notification table
    INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
    VALUES (NEW.user_id, 'HR Communication', NEW.message, 0, '', 'Pending');
END;
//
DELIMITER ;

-- Trigger for Account Status Notification (Enabling/Disabling):
DELIMITER //
CREATE TRIGGER trg_account_status
AFTER INSERT ON tbl_account_status
FOR EACH ROW
BEGIN
    -- Insert a new notification into the notification table
    INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
    VALUES (NEW.user_id, 'Account Status', CONCAT('Your account has been ', NEW.account_status), 0, '', 'Pending');
END;
//
DELIMITER ;

--Trigger for Survey Notification:

DELIMITER //
CREATE TRIGGER trg_survey
AFTER INSERT ON tbl_survey
FOR EACH ROW
BEGIN
    -- Insert a new notification into the notification table
    INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
    VALUES (NEW.user_id, 'Survey Notification', 'You have a new survey notification.', 0, '', 'Pending');
END;
//
DELIMITER ;

-- Trigger for Internal Job Posting Notification:
DELIMITER //
CREATE TRIGGER trg_job_posting
AFTER INSERT ON tbl_jobs
FOR EACH ROW
BEGIN
    -- Insert a new notification into the notification table
    INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
    VALUES (NEW.user_id, 'Job Posting', 'There is a new internal job posting available.', 0, '', 'Pending');
END;
//
DELIMITER ;

-- Trigger for Salary Change Notification (AFTER UPDATE):
DELIMITER //
CREATE TRIGGER trg_salary_change_after_update
AFTER UPDATE ON tbl_salary_
FOR EACH ROW
BEGIN
    -- Check if the 'salary_change' column has been updated
    IF NEW.salary_change <> OLD.salary_change THEN
        -- Insert a new notification into the notification table
        INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
        VALUES (NEW.user_id, 'Salary Change', CONCAT('Your salary has been changed to /=', NEW.salary_change), 0, '', 'Pending');
    END IF;
END;
//
DELIMITER ;

-- Trigger for Role Change Notification (AFTER UPDATE):
DELIMITER //
CREATE TRIGGER trg_role_change_after_update
AFTER UPDATE ON tbl_role
FOR EACH ROW
BEGIN
    -- Check if the 'new_role' column has been updated
    IF NEW.new_role <> OLD.new_role THEN
        -- Insert a new notification into the notification table
        INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
        VALUES (NEW.user_id, 'Role Change', CONCAT('Your role has been changed to ', NEW.new_role), 0, '', 'Pending');
    END IF;
END;
//
DELIMITER ;

-- Create similar AFTER UPDATE triggers for the other events (Leave, Password Change, Department Change, Appraisal, HR Communication, Account Status, Survey, Job Posting).

--












