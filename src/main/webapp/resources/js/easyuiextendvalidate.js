/**
 * easyui validate 扩展
 */
;

// 添加验证规则：可以不输入，但是如果输入，最多两位小数的number
$.extend($.fn.validatebox.defaults.rules, {
	isMyNumber : {//value值为文本框中的值
          validator: function (value) {
        	  console.log(value);
        	  if (null == value || 0 == value.length) {
        	        return true;
        	    }
        	    var myNumber = /^(0|[1-9]\d*)(\s|$|\.\d{1,2}\b)/;
        	    return myNumber.test(value);
      },
      message: '请输入正确的数字,最多两位小数.'
 }
});