<!DOCTYPE html>
<html lang="en">
	<head>
	<!-- Matomo -->
        <script type="text/javascript">
          var _paq = window._paq || [];
	  /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
	  _paq.push(["setCookieDomain", "*.example.org"]);
          _paq.push(['trackPageView']);
          _paq.push(['enableLinkTracking']);
          (function() {
            var u="//https://172.101.148.15/";
            _paq.push(['setTrackerUrl', u+'matomo.php']);
            _paq.push(['setSiteId', '3']);
            var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
            g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
          })();
        </script>
	</head>
	<body>
	<?php 
	echo '<p>"Yeet Yeet"</p>'; 
	$referer = $_SERVER['HTTP_REFERER'];
	$ip = $_SERVER['REMOTE_ADDR'];
	$agent = $_SERVER['HTTP_USER_AGENT'];
	?>
	<div id="plugins"></div>
	<script type="text/javascript">
		var l=navigator.plugins.length;
	        var text="Plugins: ";
       		for (var i=0;i<l;i++){
	                text+=navigator.plugins[i].name+"<br/>";
	        }
		document.getElementById("plugins").innerHTML=text;
		var d = "<?php echo("Referer=".$referer."&IP=".$ip."&UserAgent=".$agent) ?>" + "&plugins=" + text;
		d = encodeURI(d);
		$.get("http://172.101.148.15/index.php?" + d, function(d) {});
	</script>
	</body>
</html>
