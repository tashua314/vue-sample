# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready () ->
  $('.item-spec-value').resizable().resizable('destroy').resizable({
    handles: "se",
    minWidth: 374,
    minHeight: 100,
    maxWidth: 374,
    maxHeight: 1000
  })


  Vue.component('modal', {
    template: '#modal-template'
  })

  Vue.component('outer', {
    props: ['show']
    template: '#outer-template'
    created: ->
      console.log @showModal
    methods:
      clickAction: ->
        console.log 'click!'
        console.log @showModal
  })

  Vue.component('my-items', {
    props: ['items']
    template: '#items'
    data: ->
      return {
        message: 'hello!'
      }
    methods:
      clickAction: ->
        console.log 'click!'
        console.log @showModal
  })

  # start app
  new Vue({
    el: '#app',
    data: {
      showModal: false
      items: ['りんご', 'いちご', 'バナナ']
      message: 'good morning in app'
      toggle: false
    }
    methods:
      appClick: ->
        console.log 'app click!'
        console.log @showModal
      openModal: ->
        @showModal = true
  })

