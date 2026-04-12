// Load saved items from localStorage, or start with an empty array
let items = JSON.parse(localStorage.getItem('items') || '[]');

// Save items to localStorage
function saveItems() {
    localStorage.setItem('items', JSON.stringify(items));
}

// Get references to DOM elements
const form = document.getElementById('main-form');
const resultsDiv = document.getElementById('results');

// Handle form submission
form.addEventListener('submit', function (e) {
    e.preventDefault();

    // Read form values
    const title = document.getElementById('title').value;
    const description = document.getElementById('description').value;

    // Add to data store and save
    items.push({ id: Date.now(), title, description });
    saveItems();

    // Clear form and re-render
    form.reset();
    render();
});

// Render on page load to show any saved items
render();

// Render all items to the page
function render() {
    if (items.length === 0) {
        resultsDiv.innerHTML = '<p class="empty-state">No items yet. Add one above.</p>';
        return;
    }

    resultsDiv.innerHTML = items
        .map(item => `
            <div class="card">
                <h3>${escapeHtml(item.title)}</h3>
                <p>${escapeHtml(item.description)}</p>
            </div>
        `)
        .join('');
}

// Prevent XSS by escaping HTML in user input
function escapeHtml(text) {
    const div = document.createElement('div');
    div.textContent = text;
    return div.innerHTML;
}
