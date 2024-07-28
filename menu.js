document.addEventListener('DOMContentLoaded', function () {
    const menuList = document.getElementById('menuList');

    function loadMenuItems() {
        fetch('menu.php?action=read')
            .then(response => response.json())
            .then(data => {
                console.log(data); // Log the fetched data to the console
                menuList.innerHTML = data.map((item, index) => `
                    <div class="menu">
                    <hr style="width:100%">
                    <h2><span style="color:#B38B00">★</span>${item.name}</h2>
                    <div class="qp">
                        <p id="qty">Quantity: ${item.quantity}</p>
                    <p id="price">Price: ${item.price}₹</p>
                    </div>
                        <div class="desc">
                            <p id="disc">Description:${item.description}</p>    
                        </div>
                    </div>
                `).join('');
            })
            .catch(error => {
                console.error('There was a problem with the fetch operation:', error);
            });
    }

    loadMenuItems();
});

