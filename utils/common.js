function loadInfo(id, obj)
{
  var key = 'info_' + id;
  var detail = wx.getStorageSync(key)
  if(detail)
  {
    console.log('data from huancun')
    obj.setData({
      info: {
        id: detail.id,
        title: detail.title,
        cTime: detail.cTime,
        img: detail.img,
        content: detail.content
      }
    })

    wx.setNavigationBarTitle({
      title: detail.title
    })
  }
  else{
    wx.request({
      url: 'http://localhost:801/weicms/index.php?s=/addon/Cms/Cms/getDetail/id/' + id,
      data: {},
      header: {
        'Content-Type': 'application/json'
      },
      success: function (res) {
        var detail = res.data;
        console.log('data from fuwuqi')
        wx.setStorageSync(key, detail);

        obj.setData({
          info: {
            id: detail.id,
            title: detail.title,
            cTime: detail.cTime,
            img: detail.img,
            content: detail.content
          }
        })

        //设置当前页的页面标题
        wx.setNavigationBarTitle({
          title: detail.title
        })
      },
      fail: function (res) {
        wx.showToast({
          title: '网络异常',
          icon: 'none'
        })
      }
    })
  }
  
}

module.exports = {
  loadInfo: loadInfo
}