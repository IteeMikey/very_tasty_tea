function loadData(url) {
   let xhr = new XMLHttpRequest(); //встроенный в браузер объект, который даёт возможность делать HTTP-запросы к серверу без перезагрузки страницы
   xhr.open("GET", url, true);
   xhr.send();
   window.location.hash = url.split('.')[0];
   //console.log(window.hash)
   xhr.onreadystatechange = function() {
      if (xhr.status === 200 && xhr.readyState === 4) {
         document.getElementById('app').innerHTML = xhr.responseText;
      }
      else {
         console.log(Error(xhr.statusText));
      }
   };
}

function hash() {
   const hash = window.location.hash;
   const url = `${hash.split('#')[1]}.html`
   // console.log(url)
   loadData(url);
}