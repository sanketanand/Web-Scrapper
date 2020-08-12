<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style>
		#ifrm1{
			visibility: hidden;
		}
	</style>
</head>

<body>
    <iframe is="x-frame-bypass" src="https://time.com" id="ifrm1"></iframe>

    <script src="https://unpkg.com/@ungap/custom-elements-builtin"></script>
    <script type="module" src="https://unpkg.com/x-frame-bypass"></script>
    <script>

        var ifrm1 = document.getElementById('ifrm1');
		
		function testIfrm() {
            var cell_h = ifrm1.contentWindow.document.querySelectorAll('ol.swipe-h');
            var x1 = cell_h[0].querySelectorAll('.title');
            for (i = 0; i < x1.length; i++) {
				document.write(x1[i].querySelector("a").href + "<br>");
                document.write(x1[i].innerText + "<br> <br>");
			}
        }
        ifrm1.addEventListener('load', testIfrm);
		
    </script>

</body>

</html>