const app = getApp()

Page({

  /**
   * 页面的初始数据
   */
  data: {
    info: {
      id: '',
      title: 'title',
      cTime: '2017-04-28',
      img: 'http://localhost:801/weicms/Uploads/Picture/2018-04-28/5ae4293f70b53.jpg',
      content: '丹阳县为天下最有名的两位讼师林正庸和一锤先生的归隐之所，一直吸引来自五湖四海的优秀讼师们聚集在这儿。'
    }
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this;
    wx.request({
      url: 'http://localhost:801/weicms/index.php?s=/addon/Cms/Cms/getDetail/id/' + options.id,
      data: {},
      header: {
        'Content-Type': 'application/json'
      },
      success: function (res) {
        var detail = res.data;
        that.setData({
          info: {
            id: detail.id,
            title: detail.title,
            cTime: detail.title.cTime,
            img: detail.img,
            content: detail.content
          }
        })
      }
    })
  },

})