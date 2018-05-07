const app = getApp()
var common = require('../../utils/common.js');

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
    
    common.loadInfo(options.id, this)
  },

  closePage: function()
  {
    wx.navigateBack();
  }

})