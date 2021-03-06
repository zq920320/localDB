'use strict'
expect = require('expect.js')
Utils = require('../src/lib/utils.js')

describe 'Utils', ->
    it 'isType', ->
        expect(Utils.isType(new Object(),"object")).to.be.ok()
        expect(Utils.isType(new String("abc"),"object")).not.to.be.ok()

    it 'isObject', ->
        expect(Utils.isObject(new Object())).to.be.ok()
        expect(Utils.isObject({})).to.be.ok()
        expect(Utils.isObject(new String("abc"))).not.to.be.ok()
        expect(Utils.isObject("abc")).not.to.be.ok()
        expect(Utils.isObject(new Number(123))).not.to.be.ok()
        expect(Utils.isObject(123)).not.to.be.ok()
        expect(Utils.isObject(new Array())).not.to.be.ok()
        expect(Utils.isObject([])).not.to.be.ok()
        expect(Utils.isObject(->)).not.to.be.ok()
        expect(Utils.isObject(new RegExp("abc"))).not.to.be.ok()
        expect(Utils.isObject(/abc/)).not.to.be.ok()
    it 'isString', ->
        expect(Utils.isString(new Object())).not.to.be.ok()
        expect(Utils.isString({})).not.to.be.ok()
        expect(Utils.isString(new String("abc"))).to.be.ok()
        expect(Utils.isString("abc")).to.be.ok()
        expect(Utils.isString(new Number(123))).not.to.be.ok()
        expect(Utils.isString(123)).not.to.be.ok()
        expect(Utils.isString(new Array())).not.to.be.ok()
        expect(Utils.isString([])).not.to.be.ok()
        expect(Utils.isString(->)).not.to.be.ok()
        expect(Utils.isString(new RegExp("abc"))).not.to.be.ok()
        expect(Utils.isString(/abc/)).not.to.be.ok()
    it 'isNumber', ->
        expect(Utils.isNumber(new Object())).not.to.be.ok()
        expect(Utils.isNumber({})).not.to.be.ok()
        expect(Utils.isNumber(new String("abc"))).not.to.be.ok()
        expect(Utils.isNumber("abc")).not.to.be.ok()
        expect(Utils.isNumber(new Number(123))).to.be.ok()
        expect(Utils.isNumber(123)).to.be.ok()
        expect(Utils.isNumber(new Array())).not.to.be.ok()
        expect(Utils.isNumber([])).not.to.be.ok()
        expect(Utils.isNumber(->)).not.to.be.ok()
        expect(Utils.isNumber(new RegExp("abc"))).not.to.be.ok()
        expect(Utils.isNumber(/abc/)).not.to.be.ok()
    it 'isArray', ->
        expect(Utils.isArray(new Object())).not.to.be.ok()
        expect(Utils.isArray({})).not.to.be.ok()
        expect(Utils.isArray(new String("abc"))).not.to.be.ok()
        expect(Utils.isArray("abc")).not.to.be.ok()
        expect(Utils.isArray(new Number(123))).not.to.be.ok()
        expect(Utils.isArray(123)).not.to.be.ok()
        expect(Utils.isArray(new Array())).to.be.ok()
        expect(Utils.isArray([])).to.be.ok()
        expect(Utils.isArray(->)).not.to.be.ok()
        expect(Utils.isArray(new RegExp("abc"))).not.to.be.ok()
        expect(Utils.isArray(/abc/)).not.to.be.ok()
    it 'isFunction', ->
        expect(Utils.isFunction(new Object())).not.to.be.ok()
        expect(Utils.isFunction({})).not.to.be.ok()
        expect(Utils.isFunction(new String("abc"))).not.to.be.ok()
        expect(Utils.isFunction("abc")).not.to.be.ok()
        expect(Utils.isFunction(new Number(123))).not.to.be.ok()
        expect(Utils.isFunction(123)).not.to.be.ok()
        expect(Utils.isFunction(new Array())).not.to.be.ok()
        expect(Utils.isFunction([])).not.to.be.ok()
        expect(Utils.isFunction(->)).to.be.ok()
        expect(Utils.isFunction(new RegExp("abc"))).not.to.be.ok()
        expect(Utils.isFunction(/abc/)).not.to.be.ok()
    it 'isRegex', ->
        expect(Utils.isRegex(new Object())).not.to.be.ok()
        expect(Utils.isRegex({})).not.to.be.ok()
        expect(Utils.isRegex(new String("abc"))).not.to.be.ok()
        expect(Utils.isRegex("abc")).not.to.be.ok()
        expect(Utils.isRegex(new Number(123))).not.to.be.ok()
        expect(Utils.isRegex(123)).not.to.be.ok()
        expect(Utils.isRegex(new Array())).not.to.be.ok()
        expect(Utils.isRegex([])).not.to.be.ok()
        expect(Utils.isRegex(->)).not.to.be.ok()
        expect(Utils.isRegex(new RegExp("abc"))).to.be.ok()
        expect(Utils.isRegex(/abc/)).to.be.ok()
    it 'parse', ->
        expect(Utils.parse()).to.be.eql([])
        expect(Utils.parse('{"a":1}')).to.be.eql({a:1})
        expect(Utils.parse('[1,2,3]')).to.be.eql([1,2,3])
    it 'stringify', ->
        expect(Utils.stringify()).to.be('[]')
        expect(Utils.stringify({a:1})).to.be('{"a":1}')
        expect(Utils.stringify([1,2,3])).to.be('[1,2,3]')





