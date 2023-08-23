// Select the toggle button, navigation, and main elements
let toggle = document.querySelector('.toggle');
let navigation = document.querySelector('.navigation');
let main = document.querySelector('.main');

// Define the toggle behavior when the toggle button is clicked
toggle.onclick = function () {
    navigation.classList.toggle('active');
    main.classList.toggle('active');
    
    if (main.classList.contains('active')) {
        main.style.width = 'calc(100% - 300px)';
        main.style.marginRight = '200px';
    } else {
        main.style.width = 'calc(100% - 80px)';
        main.style.marginRight = '20px';
    }
};

// Select all navigation list items
let listItems = document.querySelectorAll('.navigation li');

// Define the activelink function for adding the 'hovered' class
function activelink() {
    listItems.forEach((item) =>
        item.classList.remove('hovered'));
    this.classList.add('hovered');
}

// Attach the 'mouseover' event listener to each navigation list item
listItems.forEach(item =>
    item.addEventListener('mouseover', activelink));
