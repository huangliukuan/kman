var funs={
  getHeader:function(Header){
    $.ajax({
      url:"header.html",
      type:"get",
      success:function(result){
        Header(result);
      }
    });
  },
  getFooter:function(Footer){
    return new Promise(function(resolve,reject){
      $.ajax({
        url:"footer.html",
        type:"get",
        success:function(result){
          resolve(result);
        }
      });
    })
  }
}