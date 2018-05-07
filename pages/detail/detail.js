const app = getApp()

Page({

  /**
   * 页面的初始数据
   */
  data: {
    info: {
      id: '',
      title: '',
      cTime: '',
      img: '',
      content: ''
    }
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this;
    var key = 'info_' + options.id;

    wx.request({
      url: 'http://localhost:801/weicms/index.php?s=/addon/Cms/Cms/getDetail/id/' + options.id,
      data: {},
      header: {
        'Content-Type': 'application/json'
      },
      success: function (res) {
        var detail = res.data;      
        
        wx.setStorageSync(key, detail);

        that.setData({
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
      fail: function(res)
      {
        var detail = wx.getStorageSync(key)

        if (detail)
        {
          that.setData({
            info: {
              id: detail.id,
              title: detail.title,
              cTime: detail.cTime,
              img: detail.img,
              content: detail.content
            }
          })
          wx.showToast({
            title: '网络异常，已加载缓存数据',
            icon: 'none'
          })
        }
        else{
          wx.showToast({
            title: '网络异常，暂无缓存数据',
            icon: 'none'
          })
        }
        
      }
    })
  },

  closePage: function()
  {
    wx.navigateBack();
  }

})