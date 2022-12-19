console.log('hello')
var btn_about = document.getElementById('btn_about')
var btn_cont = document.getElementById('btn_cont')
var cont = document.getElementById('cont')

document.body.onload = () => {
    console.log('hello onload')
    let request = new XMLHttpRequest;
    request.open('GET', 'about.html', true)
    request.send()
    request.onreadystatechange = function () {
        if (request.readyState === 4)
        if (request.status === 200) {
            console.log(request.responseText)
            cont.innerHTML = request.responseText
        }
    }
}