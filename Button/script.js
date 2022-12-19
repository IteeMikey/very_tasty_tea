
//функция random
const random = (min, max) => {
    const rand = min + Math.random() * (max - min + 1);
    return Math.floor(rand); //возврат округленного до целого значения результата
}

// поиск кнопки
const btn = document.querySelector('#btn');
// обработчик событий
btn.addEventListener('mouseenter', () =>{
    btn.style.left = `${random(0, 90)}%`;
    btn.style.top = `${random(0, 90)}%`;
});

// вывод в случае победы
btn.addEventListener('click', () => {
    alert('how')
});