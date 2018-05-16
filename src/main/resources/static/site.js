var visitorCount = 6 + 1;

$.ajax({
    url:"http://localhost:8081/blogAPI/add",
    type:"put",
    data: "id=1&articleCount=0&visitorCount="+visitorCount,
    success:function(){
        alert("ok");
    }
})