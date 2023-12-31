<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<!-- 1. The <iframe> (and video player) will replace this <div> tag. -->
    <div id="player"></div>
    <!-- <div id="player2"></div>
    <div id="player3"></div> 
    <div id="player4"></div> -->
    

    <script>
      // 2. This code loads the IFrame Player API code asynchronously.
      var tag = document.createElement('script');

      tag.src = "https://www.youtube.com/iframe_api";
      var firstScriptTag = document.getElementsByTagName('script')[0];
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

      // 3. This function creates an <iframe> (and YouTube player)
      //    after the API code downloads.
      var player;
      var player2;
      var player3;
      var player4;
      function onYouTubeIframeAPIReady() {
        player = new YT.Player('player', {
          height: '915px',
          width: '100%',
          videoId: '${videoUrl}', 
          events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
          }
        });
        player2 = new YT.Player('player2', {
            height: '650px',
            width: '100%',
            videoId: 'Fmc76_FX4qI',
            events: {
              'onReady': onPlayerReady,
              'onStateChange': onPlayerStateChange
            }
          });
        player3 = new YT.Player('player3', {
            height: '360',
            width: '640',
            videoId: 'e1SCPHJdLNU',
            events: {
              'onReady': onPlayerReady,
              'onStateChange': onPlayerStateChange
            }
          });
        player4 = new YT.Player('player4', {
            height: '360',
            width: '640',
            videoId: 'ZzU1TNHWWhM',
            events: {
              'onReady': onPlayerReady,
              'onStateChange': onPlayerStateChange
            }
          });
      }

      // 4. The API will call this function when the video player is ready.
      function onPlayerReady(event) {
        event.target.playVideo();
      }

      // 5. The API calls this function when the player's state changes.
      //    The function indicates that when playing a video (state=1),
      //    the player should play for six seconds and then stop.
      var done = false;
      function onPlayerStateChange(event) {
        if (event.data == YT.PlayerState.PLAYING && !done) {
          setTimeout(stopVideo, 6000);
          done = true;
        }
      }
      function stopVideo() {
    	/* done = false; */
        player.stopVideo();
      }
    </script>
</body>
</html>