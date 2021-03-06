// Generated by CoffeeScript 1.7.1
var Utils, _isType;

Utils = {};

_isType = function(type) {
  return function(obj) {
    return {}.toString.call(obj).toLowerCase() === ("[object " + type + "]").toLowerCase();
  };
};

Utils.isType = function(ele, type) {
  return _isType(type)(ele);
};

Utils.isObject = _isType("object");

Utils.isString = _isType("string");

Utils.isNumber = _isType("number");

Utils.isArray = _isType("array");

Utils.isFunction = _isType("function");

Utils.isRegex = _isType("regexp");

Utils.parse = function(str) {
  if ((str != null) && Utils.isString(str)) {
    return JSON.parse(str);
  } else {
    return [];
  }
};

Utils.stringify = function(obj) {
  if ((obj != null) && (Utils.isArray(obj) || Utils.isObject(obj))) {
    return JSON.stringify(obj);
  } else {
    return "[]";
  }
};

module.exports = Utils;
