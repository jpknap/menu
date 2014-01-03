

        $(document).ready(function(){

            initialize();
            $.getJSON('php/map21102013.php','',process_contatcs);
            var array =  new Array();
            function process_contatcs(data){


                $.each(data, function(name , info){
                    var lat = info.latitud;
                    var lon = info.longitud;
                    var nombre = info.nombre;
                    var direccion = info.direccion;
                    var telefono = info.telefono;
                    var id = nombre;
                    TestMarker(lat, lon , nombre , id, direccion, telefono);

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
    function addMarker(location,title,id, direccion, telefono, lat , longi) {
        marker = new google.maps.Marker({
            position: location,
            title: title,
            id: id,
            icon: 'images/restaurant2.png',
            map: map

        });
        gmarkers.push(marker);
        var infowindow = new google.maps.InfoWindow({
        content: "<div class='panel panel-primary'>"+
            "<div class='panel-heading'>"+title+"</div>"+
            "<div class='panel-body'>"+
            "<p><strong>Dirección: </strong>"+direccion+"</p>"+
            "<p><strong>Teléfono: </strong> +56"+telefono+"</p>"+
            "</div>"+
            "</div>",
        maxWidth:500,
        maxLength:100
    });
        google.maps.event.addListener(marker, 'click', function(){
         getMenuRest(lat ,longi);
        infowindow.open(map, this)     ;

    });

    google.maps.event.addListener(marker, "mouseover", function() {
        setTimeout(function() { infowindow.open(map, marker) }, 1000);

     
      
       
    });

    google.maps.event.addListener(marker, 'mouseout', function() {
       // infowindow.close();
    });

     

    }

    // Testing the addMarker function
    function TestMarker(lat ,longi , title ,id, direccion, telefono ) {
           marke = new google.maps.LatLng(lat, longi);
           addMarker(marke,title,id, direccion, telefono ,lat,longi);
    }

    function puntos_rest(item){

        for (i = 0; i<gmarkers.length; i++){
            gmarkers[i].setMap(null);
        }
        if(res = $(item).val() != "0"){
        var res = $(item).val().split(",");

         TestMarker(res[0],res[1], $(item).find(":selected").text() ,$(item).find(":selected").text(), res[2], res[3] );
         centrarMapaRest(res[0],res[1]);
         getMenuRest(res[0], res[1]);
        }
        else{
             $(item).find('option').each(function() {
            if($(this).val() != 0 ){

                 var res = $(this).val().split(",");
                TestMarker(res[0],res[1], $(this).text() ,$(this).text(), res[2], res[3] );

            }
        });
        }

    }

    function centrarMapa(data){
        $.each(data, function(name , info){
            map.panTo(new google.maps.LatLng(info.latitud , info.longitud ));
        });
    }
    function centrarMapaRest(latitud , longitud){
            map.panTo(new google.maps.LatLng(latitud , longitud ));

    }
