//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    contentList: []
  },
  goToDetail: function(e)
  {
    wx.navigateTo({
      url: '../detail/detail?id=' + e.currentTarget.dataset.id,
    })
  },

  onLoad: function () {
    var that = this;
    wx.request({
      url: 'http://localhost:801/weicms/index.php?s=/addon/Cms/Cms/getList',
      data: {},
      header: {
        'Content-Type': 'application/json'
      },
      success: function(res) {
        that.setData({
          contentList: res.data
        })
      }
    })
  },
  // getUserInfo: function(e) {
  //   console.log(e)
  //   app.globalData.userInfo = e.detail.userInfo
  //   this.setData({
  //     userInfo: e.detail.userInfo,
  //     hasUserInfo: true
  //   })
  // }
})
