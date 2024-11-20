// Select necessary elements
const navMenu = document.getElementById('nav-menu');
const navToggle = document.getElementById('nav-toggle');
const navClose = document.getElementById('nav-close');

// Open menu on navToggle click
navToggle.addEventListener('click', () => {
    navMenu.classList.add('active'); // Add active class to show menu
});

// Close menu on navClose click
navClose.addEventListener('click', () => {
    navMenu.classList.remove('active'); // Remove active class to hide menu
});

// Close menu when any nav link is clicked
const navLinks = document.querySelectorAll('.nav__link');
navLinks.forEach(link => {
    link.addEventListener('click', () => {
        navMenu.classList.remove('active'); // Hide menu on link click
    });
});

// Listen for window resize to close the menu if screen is resized to larger view
window.addEventListener('resize', () => {
    if (window.innerWidth > 768) {
        navMenu.classList.remove('active'); // Remove active class on larger screens
    }
});
