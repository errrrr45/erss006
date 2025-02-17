function productIncrement() {
    let productValue = document.querySelector('.product-value');
    let count = parseInt(productValue.innerHTML);
    count++;
    productValue.innerHTML = count;
}

function productDecrement() {
    let productValue = document.querySelector('.product-value');
    let count = parseInt(productValue.innerHTML);
    if (count > 0) {
        count--;
        productValue.innerHTML = count;
    }
}

function getTotalPrice() {
    let productValue = document.querySelector('.product-value');
    let productPrice = document.querySelector('.product-price');
    let buttonTotal = document.querySelector('.button-total');

    let count = parseInt(productValue.innerHTML);
    let price = parseInt(productPrice.innerHTML.replace('$', '').trim());

    buttonTotal.innerHTML = `Жалпы бағасы: ${count * price} $`;
}
