--Trigger for Salary Change Notification:
DELIMITER //
CREATE TRIGGER trg_salary_change
AFTER INSERT ON tbl_salary_notifications
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
AFTER INSERT ON tbl_role_change_notifications
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
AFTER INSERT ON tbl_leave_notifications
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
AFTER INSERT ON tbl_password_change_notifications
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
AFTER INSERT ON tbl_department_change_notifications
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
AFTER INSERT ON tbl_appraisal_notifications
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
AFTER INSERT ON tbl_hr_communication_notifications
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
AFTER INSERT ON tbl_account_status_notifications
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
AFTER INSERT ON tbl_survey_notifications
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
AFTER INSERT ON tbl_job_posting_notifications
FOR EACH ROW
BEGIN
    -- Insert a new notification into the notification table
    INSERT INTO tbl_notifications (user_id, notifications_type, message, archived, link, delivery_status)
    VALUES (NEW.user_id, 'Job Posting', 'There is a new internal job posting available.', 0, '', 'Pending');
END;
//
DELIMITER ;

--












