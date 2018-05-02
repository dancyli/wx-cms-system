//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    contentList: [],
    lastId: 0,
    bottomText: "加载更多"
  },
  goToDetail: function(e)
  {
    wx.navigateTo({
      url: '../detail/detail?id=' + e.currentTarget.dataset.id,
    })
  },

  loadData(lastId)
  {
    var that = this;
    var limit = 2;
    wx.request({
      url: 'http://localhost:801/weicms/index.php?s=/addon/Cms/Cms/getList',
      data: {lastId: lastId, limit: limit},
      header: {
        'Content-Type': 'application/json'
      },
      success: function (res) {
        if(!res.data)
        {
          that.setData({
            bottomText: '没有更多数据了'
          })
          return false;
        }
        var len = res.data.length;
        var dataArr = that.data.contentList;
        var newData = dataArr.concat(res.data);

        that.setData({
          lastId: res.data[len - 1].id,
          contentList: newData
        })
      }
    })
  },

  onLoad: function () {
    var that = this;
    
    this.loadData(0)
  },

  loadMore: function(e)
  {
    var id = e.currentTarget.dataset.lastid;
    // console.log(e);
    this.loadData(id);
  }
  // getUserInfo: function(e) {
  //   console.log(e)
  //   app.globalData.userInfo = e.detail.userInfo
  //   this.setData({
  //     userInfo: e.detail.userInfo,
  //     hasUserInfo: true
  //   })
  // }
})
