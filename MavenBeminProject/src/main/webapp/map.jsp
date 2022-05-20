<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>지도 생성하기</title>
    
</head>
<body>
<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b2c6338e234665ca02d6a8917dd7772f"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.160903, 126.879394), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(35.160903, 126.879394); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
    image={{
        src: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fko%2F%25EC%2595%2584%25EC%259D%25B4%25EC%25BD%2598%2F%25EC%25A7%2580%25EB%258F%2584-%25EB%25A7%2588%25EC%25BB%25A4%2F34392&psig=AOvVaw3P_7buT8gAaBptcXTgGahM&ust=1653110995901000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCKiemMCs7fcCFQAAAAAdAAAAABAD", // 마커이미지의 주소입니다
        size: {
          width: 64,
          height: 69,
        }, // 마커이미지의 크기입니다
        options: {
          offset: {
            x: 27,
            y: 69,
          }, // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
        },
      }}
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
</script>
</body>
</html>