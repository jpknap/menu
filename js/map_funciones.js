

		$(document).ready(function(){
			initialize();
			$.getJSON('php/map21102013.php','',process_contatcs);
			var array =  new Array();
			function process_contatcs(data){


				$.each(data, function(name , info){
                    var lat = info.latitud;
                    var lon = info.longitud;
                    var nombre = info.nombre;
                    var id = nombre;
					TestMarker(lat, lon , nombre , id);
             
		      });
         }
    });

				

    // Standard google maps function
    function initialize() {
        var myLatlng = new google.maps.LatLng(-39.833372, -73.245341);
        var myOptions = {
            zoom: 11,
            center: myLatlng
        }
        map = new google.maps.Map(document.getElementById("map"), myOptions);

    }

    // Function for adding a marker to the page.
    var gmarkers = [];
    function addMarker(location,title,id) {
        marker = new google.maps.Marker({
            position: location,
            title: title,
            id: id,
            map: map
        });
        gmarkers.push(marker);
    }

    // Testing the addMarker function
    function TestMarker(lat ,longi , title ,id ) {
           marke = new google.maps.LatLng(lat, longi);
           addMarker(marke,title,id);
    }
    
    function puntos_rest(item){
      
        for (i = 0; i<gmarkers.length; i++){
            gmarkers[i].setMap(null);
        }
        var res = $(item).val().split(",");         
         TestMarker(res[0],res[1], $(item).find(":selected").text() ,$(item).find(":selected").text() );

    }
    
    
