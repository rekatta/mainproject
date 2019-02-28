<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>KGF</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Courgette|Dancing+Script|Satisfy" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="rating.css">
  <style>
   
    .checked {
  color: goldenrod;
}
   .hero-image {
   
     /* background-repeat: no-repeat; */
      background-size: cover;
      padding :10px
   }
   
  </style>
</head>
<body>
<div class="container-flow">
<div class="hero-image">
  
 <div class="col-sm-6">
<iframe width="650" height="350" src="https://www.youtube.com/embed/fnGW4iQzVLw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
</div>

<div class="row">


 <div class="col-sm-6">
  <h3 style="font-family: Arial, Helvetica, sans-serif;"><b>Synopsis</b></h3>
<p style="font-family: Arial, Helvetica, sans-serif">K.G.F: Chapter 1 is a 2019 Indian Kannada-language period action film[7][8] written and directed by Prashanth Neel, and produced by Vijay Kiragandur under the banner Hombale films. It is the first installment in the two-part series, followed by K.G.F: Chapter 2. The film centers around Raja Krishnappa Bairya "Rocky", born into poverty, who arrives in Bombay (now Mumbai) in the 1960s, on a quest for power and wealth as desired by his dying mother. Involved with the gold mafia there, he is recruited to kill Garuda, the oppressive heir-in-waiting, in Kolar Gold Fields. Yash stars as Rocky, while Ramachandra Raju features as Garuda. Anant Nag narrates the film while also playing a supporting role alongside Srinidhi Shetty, Vasishta N. Simha, Ayyappa P. Sharma and Harish Rai.</p>
<p style="font-family: Arial, Helvetica, sans-serif;">&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;K.G.F Chapter[1] is a 2019 Telugu  film</p>
</div> 
</div>
</div>
<div class="w3-container w3-red">
  <footer class="container-fluid text-center">
  <p></p>  
  <form action="/CommentPath1" method="post" class="form-inline"  >
  <h2>Rating & comments</h2>
  
<span  onmouseover="starmark(this)" onclick="starmark(this)" id="1one" style="font-size:40px;cursor:pointer;"  class="fa fa-star checked"></span>
<span onmouseover="starmark(this)" onclick="starmark(this)" id="2one"  style="font-size:40px;cursor:pointer;" class="fa fa-star "></span>
<span onmouseover="starmark(this)" onclick="starmark(this)" id="3one"  style="font-size:40px;cursor:pointer;" class="fa fa-star "></span>
<span onmouseover="starmark(this)" onclick="starmark(this)" id="4one"  style="font-size:40px;cursor:pointer;" class="fa fa-star"></span>
<span onmouseover="starmark(this)" onclick="starmark(this)" id="5one"  style="font-size:40px;cursor:pointer;" class="fa fa-star"></span>
<br/>
<input type="text"  name="comment" style="margin-top:5px;" class="form-control"  id="comment" placeholder="Enter your review" >
<!-- <button onclick="result(); return false">Get Result</button> -->
<input  type="hidden" name="rating" id="rating">
<input type="submit" value="Submit" >
<!-- <button  onclick="result()" type="button" style="margin-top:10px;margin-left:5px;" class="btn btn-lg btn-success">Submit</button> -->
</form>
<p id="countOfStars" hidden ></p>

</footer>
</div>
</body>
 <script>
var count;
function starmark(item)
{
count=item.id[0];
sessionStorage.starRating = count;
var subid= item.id.substring(1);
for(var i=0;i<5;i++)
{
if(i<count)
{
document.getElementById((i+1)+subid).style.color="orange";
}
else
{
document.getElementById((i+1)+subid).style.color="black";
}
}
}
//function result()
//{
	document.getElementById("countOfStars").innerHTML = count;
	 document.getElementById("rating").value=count;
//Rating : Count
//Review : Comment(id)
//alert("Rating : "+count+"\nReview : "+document.getElementById("comment").value);
//}
</script>

</html>