


$(document).ready(function() {
    // Function to load notifications
    function loadNotifications() {
        $.ajax({
            url: 'your_php_script.php?action=getNotifications', // Replace with your PHP script
            method: 'GET',
            dataType: 'json',
            success: function(data) {
                // Handle the received notifications data
                displayNotifications(data);
            },
            error: function(xhr, status, error) {
                console.error('Error loading notifications: ' + error);
            }
        });
    }

    // Function to display notifications
    function displayNotifications(notifications) {
        const notificationDropdown = $('.dropdown-menu-end');
        const notificationCount = notifications.length;
        const unreadCountElement = $('.indicator');

        unreadCountElement.text(notificationCount);

        if (notificationCount === 0) {
            // Handle case when there are no notifications
            notificationDropdown.html('<p>No notifications</p>');
        } else {
            // Clear the notification dropdown and add notification items
            notificationDropdown.empty();
            notifications.forEach(function(notification) {
                const item = $('<a href="#" class="list-group-item"></a>');
                item.html(notification.message);

                // Add click event to mark notification as read
                item.click(function() {
                    markNotificationAsRead(notification.id);
                });

                notificationDropdown.append(item);
            });
        }
    }

    // Function to mark a notification as read
    function markNotificationAsRead(notificationId) {
        $.ajax({
            url: 'your_php_script.php?action=markAsRead', // Replace with your PHP script
            method: 'POST',
            data: { notification_id: notificationId },
            success: function(response) {
                // Update the unread count and re-fetch notifications
                loadNotifications();
            },
            error: function(xhr, status, error) {
                console.error('Error marking notification as read: ' + error);
            }
        });
    }

    // Load notifications when the page loads
    loadNotifications();
});
