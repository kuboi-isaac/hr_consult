
    // Function to update the notification count
    function updateNotificationCount(newCount) {
        const indicator = document.querySelector('.indicator');
        if (indicator) {
            indicator.textContent = newCount;
        }
    }

    // Simulate a new notification being received
    function simulateNewNotification() {
        // Get the current count and increment it
        const currentCount = parseInt(document.querySelector('.indicator').textContent);
        const newCount = currentCount + 1;
        
        // Update the count
        updateNotificationCount(newCount);
    }

    // Simulate reading notifications
    function simulateReadNotifications(countToReduce) {
        const currentCount = parseInt(document.querySelector('.indicator').textContent);
        const newCount = currentCount - countToReduce;

        // Ensure the count doesn't go below zero
        if (newCount >= 0) {
            updateNotificationCount(newCount);
        }
    }

    // Example usage:
    // Simulate receiving a new notification
    // Call this function when a new notification is added
    // simulateNewNotification();

    // Simulate reading notifications
    // Call this function when you read a notification
    // specify the count to reduce (e.g., 2)
    // simulateReadNotifications(2);

    
