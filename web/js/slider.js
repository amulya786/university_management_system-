 var images=["college1.jpg","college2.jpg","college3.jpg","college4.jpg","college5.jpg","college6.jpg"];
 var i=0;
 function moveSlider()
 {
     if(i==images.length)
     {
         i=0;
     }
     document.getElementById("slide").src="images/"+images[i];
     i++;
     window.setTimeout("moveSlider()",2000);
 }
 


