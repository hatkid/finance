/**
 * easyui validate 扩展
 */
;

// 添加验证规则：可以不输入，但是如果输入，最多两位小数的number
$.extend($.fn.validatebox.defaults.rules, {
	isMyNumber : {//value值为文本框中的值
          validator: function (value) {
        	  if (null == value || 0 == value.length) {
        	        return true;
        	    }
        	    var myNumber = /^(0|[1-9]\d*)(\s|$|\.\d{1,2}\b)/;
        	    return myNumber.test(value);
      },
      message: '请输入正确的数字,最多两位小数.'
 }
});

//添加验证规则：可以不输入，但是如果输入，必须是自然数
$.extend($.fn.validatebox.defaults.rules, {
	isDigitsOrEmpty : {//value值为文本框中的值
          validator: function (value) {
        	  if (null == value || 0 == value.length) {
        	        return true;
        	    }
        	    var myNumber = /\d*/;
        	    return myNumber.test(value);
      },
      message: '请输入有效数字(0-9)'
 }
});