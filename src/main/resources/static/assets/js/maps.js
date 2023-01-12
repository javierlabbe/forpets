document.addEventListener("DOMContentLoaded", function(event) {

// create the popup
    mapboxgl.accessToken = 'pk.eyJ1IjoibHVpc3NtOTkiLCJhIjoiY2xheng4ZHNuMWRweTN2cWo3amd2eGE0dyJ9.a8Et3ECvv0b-F--ykPkIuQ';
    const monument = [-70.66, -33.46416667];
    const map = new mapboxgl.Map({
    container: 'map',
    // Choose from Mapbox's core styles, or make your own style with Mapbox Studio
    style: 'mapbox://styles/mapbox/light-v11',
    center: monument,
    zoom: 15
    });
    
    // create the popup
    const popup = new mapboxgl.Popup({ offset: 25 }).setText(
     'Lugar: Parque' + 'OHiggins |' +
     ' Direccion: Tupper, Santiago, Región Metropolitana OHiggins'
    );
    
    // create DOM element for the marker
    const el = document.createElement('div');
    el.id = 'marker';
    
    // create the marker
    new mapboxgl.Marker(el)
    .setLngLat(monument)
    .setPopup(popup) // sets a popup on this marker
    .addTo(map);
	
});