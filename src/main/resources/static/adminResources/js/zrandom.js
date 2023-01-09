$("#Menus").on('click','li',function(){
    // remove classname 'active' from all li who already has classname 'active'
    $("#navMenus li.active").removeClass("active"); 
    // adding classname 'active' to current click li 
    $(this).addClass("active"); 
});