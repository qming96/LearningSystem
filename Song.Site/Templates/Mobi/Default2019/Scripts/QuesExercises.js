﻿window.loadEvent = new Array();
$(window).load(function () {
	//加载试题
    var loadbox = new MsgBox("正在加载试题...", "", 70, 101, "loading");
    $.ajax({
        url: "QuesExercisesItems.ashx",
        data: { couid: $().getPara("couid"), olid: $().getPara("olid") },
        type: "get",
        cache: true,
        beforeSend: function (result) {
            loadbox.Open();
        },
        error: function (msg) { },
        complete: function (msg) {
            loadbox.Close(false);
        },
        success: function (data) {
            $("#quesArea").html(data);
            var count = $("#quesArea .quesItem").size();
            //console.log(count);
            for (s in window.loadEvent) {
                window.loadEvent[s]();
            }
        }
    });
});

//页面实始化
window.loadEvent.push(function () {
    //总题数
    var count = $("#quesArea .quesItem").size();
    //设置试题宽度
    var wd = $(window).width();
    var hg = document.querySelector(".context").clientHeight;	
    $("#quesArea").width(wd * (count == 0 ? 1 : count + 10))
		.css("height",hg==0 ? "auto" : hg);
    //设置题型
    var quesTypes = $("body").attr("questype").split(",");
    //设置宽高，试题类型
    $(".quesItem").width(wd).height(hg).each(function (index, element) {
        var type = Number($(this).attr("type"));
        $(this).find(".ques-type").text("【" + $.trim(quesTypes[type - 1]) + "题】");
        if (type == 1 || type == 3) {
            $(this).find(".btnSubmit").hide();
        }
        //收藏图标的状态
        var isCollect = $(this).attr("IsCollect") == "True" ? true : false;
        if (isCollect) {
            $(this).find(".btnFav").addClass("IsCollect");
        }
    });
    //选项的序号，数字转字母
    $(".quesItemsBox").each(function () {
        $(this).find(">div").each(function (index, element) {
            var char = String.fromCharCode(0x41 + index);
            $(this).find("b").after(char + "、");
        });
    });
    //左右滑动切换试题
    finger.init();
});



