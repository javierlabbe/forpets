document.addEventListener("DOMContentLoaded", function(event) {
    

    //LLave del mapbox = ingresar y autorizar a la api
    mapboxgl.accessToken = 'pk.eyJ1IjoibHVpc3NtOTkiLCJhIjoiY2xheng4ZHNuMWRweTN2cWo3amd2eGE0dyJ9.a8Et3ECvv0b-F--ykPkIuQ';

    //se crea variable con mapa que sera visualizada en html
    let map = new mapboxgl.Map({
        container: 'map', // container ID
        style: 'mapbox://styles/mapbox/streets-v12', // style URL
        center: [-70.669650, -33.429850 ], // starting position [lng, lat]
        zoom: 14, // starting zoom
    });


       
});