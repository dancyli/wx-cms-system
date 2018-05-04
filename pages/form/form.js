var app = getApp();

Page({

  /**
   * 页面的初始数据
   */
  data: {
    date: "请选择",
    array: ['美国', '中国', '巴西', '日本'],
    index: 0,
    score: 0,
    isDev: false
  },

  bindPickerChange: function(e)
  {
    this.setData({
      index: e.detail.value
    })
  },
  bindDateChange: function(e)
  {
    this.setData({
      date: e.detail.value
    })
  },

  sliderChange: function(e)
  {
    console.log(e.detail.value)
    this.setData({
      score: e.detail.value
    })
  },

  switchChange: function(e)
  {
    console.log(e.detail.value)
    this.setData({
      isDev: e.detail.value
    })
  },

  formSubmit: function(e)
  {
    var formData = e.detail.value;
    var that = this;

    formData.area = this.data.index;
    formData.date = this.data.date;
    formData.score = this.data.score;
    formData.is_dev = this.data.isDev;

    console.log(formData)

    wx.request({
      url: 'http://localhost:801/weicms/index.php?s=/addon/Feedback/Feedback/addFeedback',
      method: "post",
      data: formData,
      header: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      success: function (res) {
        wx.showToast({
          title: '反馈成功，谢谢您的反馈！',
          icon: 'success',
          duration: 1500
        })
      }
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    
  },

})