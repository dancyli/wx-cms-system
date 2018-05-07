var app = getApp();

Page({

  /**
   * 页面的初始数据
   */
  data: {
    info: null,
    lastId: 0,
    fromNames: ['百度搜索', '朋友推荐', '公众号推送'],
    loadMoreText: ""
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
   this.loadData(0);
  },
  loadData(lastId)
  {
    var that = this;
    var limit = 5;


    wx.request({
      url: 'http://localhost:801/weicms/index.php?s=/addon/Feedback/Feedback/getList',
      data: { lastId: lastId, limit: limit },
      header: {
        'Content-Type': 'application/json'
      },
      success: function (res) {
        if(res.data)
        {
          var data = res.data;
          var len = data.length;
          that.setData({
            info: data,
            lastId: res.data[len - 1].id,
            loadMoreText: "加载更多"
          })
        }
        else{
          that.setData({
            loadMoreText: "没有更多数据了"
          })
        }
        
      }
    })
  },
  loadMore: function()
  {
    this.loadData(this.data.lastId)
  }

})