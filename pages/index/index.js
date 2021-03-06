var app = getApp();
var imageUtil = require('../../utils/util.js');

Page({

  /**
   * 页面的初始数据
   */
  data: {
    imagewidth: 0, //缩放后的宽 
    imageheight: 0 //缩放后的高
  },

  imageLoad: function(e)
  {
    var imageSize = imageUtil.imageUtil(e)
    this.setData({
      imagewidth: imageSize.imageWidth,
      imageheight: imageSize.imageHeight
    })
  },

  goToFeedback: function()
  {
    wx.navigateTo({
      url: '../feedback/feedback'
    })
  },
  goToCreate: function()
  {
    wx.navigateTo({
      url: '../create/create'
    })
  }
})