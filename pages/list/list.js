//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    contentList: [],
    lastId: 0,
    bottomText: "",
    hasMore: true
  },
  goToDetail: function(e)
  {
    wx.navigateTo({
      url: '../detail/detail?id=' + e.currentTarget.dataset.id,
    })
  },

  loadData(lastId)
  {
    wx.showLoading({
      title: '数据加载中...',
    })
    var that = this;
    var limit = 5;
    
    wx.request({
      url: 'http://localhost:801/weicms/index.php?s=/addon/Cms/Cms/getList',
      data: {lastId: lastId, limit: limit},
      header: {
        'Content-Type': 'application/json'
      },
      success: function (res) {
        if(!res.data)
        {
          wx.showToast({
            title: '没有更多数据了',
            icon: 'none',
            duration: 2000
          })
          that.setData({
            bottomText: '没有更多数据了',
            hasMore: false
          })
          return false;
        }
        var len = res.data.length;
        var dataArr = that.data.contentList;
        var newData = dataArr.concat(res.data);

        that.setData({
          lastId: res.data[len - 1].id,
          contentList: newData,
          bottomText: "加载更多"
        })
        if(lastId == 0)
        {
          wx.setStorageSync('CmsList', newData);
        }
        
        wx.hideLoading()
      },
      fail: function(res) {
        if (lastId == 0)
        {
          var data = wx.getStorageSync('CmsList')

          that.setData({
            lastId: data[data.length - 1].id,
            contentList: data,
            bottomText: ""
          })

          wx.hideLoading()
          wx.showToast({
            title: '网络异常，已加载缓存数据',
            icon: 'none'
          })
        }
        
        
      }
    })
  },

  onLoad: function () {
    var that = this;

    this.loadData(0)
  },

  loadMore: function(e)
  {
    var that = this;
    wx.getNetworkType({
      success: function (res) {
        // 返回网络类型, 有效值：
        // wifi/2g/3g/4g/unknown(Android下不常见的网络类型)/none(无网络)
        var networkType = res.networkType
        if (networkType !== 'wifi' && that.data.hasMore)
        {
          wx.showModal({
            title: '温馨提示',
            content: '你当前不在wifi环境下，可能会产生数据流量费用',
            // showCancel: false,
            success: function (res) {
              if (res.confirm) {
                console.log('用户点击确定')
                var id = e.currentTarget.dataset.lastid;
                that.loadData(id);
              } else if (res.cancel) {
                console.log('用户点击取消')
              }
            }
          }) 
        }
      }
    })
  },
})
