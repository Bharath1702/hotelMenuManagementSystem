document.addEventListener('DOMContentLoaded', function () {
    const menuForm = document.getElementById('menuForm');
    const menuTable = document.getElementById('menuTable');

    // Load menu items
    function loadMenuItems() {
        fetch('menu.php?action=read')
            .then(response => response.json())
            .then(data => {
                menuTable.innerHTML = data.map((item, index) => `
                    <tr>
                        <td>${index + 1}</td>
                        <td>${item.name}</td>
                        <td>${item.quantity}</td>
                        <td>${item.price}</td>
                        <td class="actions">
                            <button class="edit" onclick="editItem(${item.id})">Edit</button>
                            <button class="delete" onclick="deleteItem(${item.id})">Delete</button>
                        </td>
                    </tr>
                `).join('');
            });
    }

    // Add or update menu item
    menuForm.addEventListener('submit', function (e) {
        e.preventDefault();

        const formData = new FormData(menuForm);
        const id = formData.get('id');
        const action = id ? 'update' : 'create';

        fetch(`menu.php?action=${action}`, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                menuForm.reset();
                loadMenuItems();
            } else {
                alert(data.message);
            }
        });
    });

    // Edit item
    window.editItem = function (id) {
        fetch(`menu.php?action=edit&id=${id}`)
            .then(response => response.json())
            .then(data => {
                document.getElementById('itemId').value = data.id;
                document.getElementById('name').value = data.name;
                document.getElementById('quantity').value = data.quantity;
                document.getElementById('price').value = data.price;
            });
    }

    // Delete item
    window.deleteItem = function (id) {
        if (confirm('Are you sure you want to delete this item?')) {
            fetch(`menu.php?action=delete&id=${id}`)
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        loadMenuItems();
                    } else {
                        alert(data.message);
                    }
                });
        }
    }

    loadMenuItems();
});
