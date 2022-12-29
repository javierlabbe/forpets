document.addEventListener("DOMContentLoaded", function(event) {


	//LLave del mapbox = ingresar y autorizar a la api
	mapboxgl.accessToken = 'pk.eyJ1Ijoicm9jaW8wMSIsImEiOiJjbGM1aDlmZDAwYno2M29sN2U4aTVtOW93In0.E6jVmJaaXvBW_8zr44-t1A';

	//se crea variable con mapa que sera visualizada en html
	let map = new mapboxgl.Map({
		container: 'map', // container ID
		style: 'mapbox://styles/mapbox/streets-v12', // style URL
		center: [-70.669650, -33.429850], // starting position [lng, lat]
		zoom: 14, // starting zoom
	});

});