# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

Calendar =
  selectedElements: []
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
      this.completeSelection(element)
    else
      start_month = $(start).data("month")
      finish_month = $(finish).data("month")
      if start_month == finish_month
        start_day = $(start).data("day")
        finish_day = $(finish).data("day")
        if start_day < finish_day
          current_day = start_day
          while current_day <= finish_day
            this.select($("#day-#{start_month}-#{current_day}"))
            current_day += 1
      else if $(start).data("month") >= $(finish).data("month")

      else

$(document).ready ->
  $('.calendar-day').click (e) ->
    if e.shiftKey
      Calendar.completeSelection(e.target)
    else
      Calendar.clearSelection()
      Calendar.select(e.target)
