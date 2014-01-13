# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

Calendar =
  selectedElements: []
  colors: ["996633", "9999CC", "FFFF00", "666633", "99CCCC", "993333"]
  clearSelection: () ->
    ($(el).removeClass('selected') for el in this.selectedElements)
    this.selectedElements = []
  select: (element) ->
    this.selectedElements.push(element)
    $(element).addClass('selected')
  completeSelection: (finish) ->
    start = this.selectedElements[0]
    if this.selectedElements.length > 1
      this.clearSelection()
      this.select(start)
      this.completeSelection(finish)
    else
      this.selectRange(start, finish)
  selectRange: (start, finish) ->
    start_month = $(start).data("month")
    finish_month = $(finish).data("month")
    start_day = $(start).data("day")
    finish_day = $(finish).data("day")
    if start_month > finish_month
      temp = start_month
      start_month = finish_month
      finish_month = temp
      temp = start_day
      start_day = finish_day
      finish_day = temp
    if start_month == finish_month
      if start_day > finish_day
        temp = start_day
        start_day = finish_day
        finish_day = temp

      current_day = start_day

      while current_day <= finish_day
        this.select($("#day-#{start_month}-#{current_day}"))
        current_day += 1
    else
      current_month = start_month
      current_day = start_day
      while current_day <= 32
        el = $("#day-#{start_month}-#{current_day}")
        this.select(el) if el
        current_day += 1
      current_month += 1
      while current_month < finish_month
        current_day = 1
        while current_day <= 32
          el = $("#day-#{current_month}-#{current_day}")
          this.select(el) if el
          current_day += 1
        current_month += 1

      current_day = 1
      while current_day <= finish_day
        el = $("#day-#{finish_month}-#{current_day}")
        this.select(el) if el
        current_day += 1
  colorize: (color) ->
    for el in this.selectedElements
      el = $(el)
      for hexcolor in this.colors
        el.removeClass("label-#{hexcolor}")
      el.removeClass("selected")
      el.addClass("label-#{color}")
      this.persistDateAs(el.data("year"), el.data("month"), el.data("day"), color)
    this.selectedElements = []
  persistDateAs: (year, month, day, color) ->
    $.post('/updateDate', {year: year, month: month, day: day, color: color})
  unlabelSelection: () ->
    for el in this.selectedElements
      el = $(el)
      for hexcolor in this.colors
        el.removeClass("label-#{hexcolor}")
      el.removeClass("selected")
      this.persistDateAs(el.data("year"), el.data("month"), el.data("day"), null)


$(document).ready ->
  $('.calendar-day').click (e) ->
    if e.shiftKey && Calendar.selectedElements.length > 0
      Calendar.completeSelection(e.target)
    else
      Calendar.clearSelection()
      Calendar.select(e.target)
  $('.label-button').click (e) ->
    color = $(e.target).attr('id').replace("label-", "")
    Calendar.colorize(color)
  $('#label-clear').click (e) ->
    Calendar.unlabelSelection()
