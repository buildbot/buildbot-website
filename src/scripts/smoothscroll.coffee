# code adapted from http://www.learningjquery.com/2007/10/improved-animated-scrolling-script-for-same-page-links
angular.module('app').controller 'smoothScroll',  ->
    filterPath = (string) ->
        string.replace(/^\//, "").replace(/(index|default).[a-zA-Z]{3,4}$/, "").replace /\/$/, ""

    # find the first element that is "scrollable"
    # for some browsers this is html, other's body is scrollable
    scrollableElement = (els...) ->
        for el in els
            scrollElement = $(el)
            if scrollElement.scrollTop() > 0
                return scrollElement
            else
                scrollElement.scrollTop 1
                isScrollable = scrollElement.scrollTop() > 0
                scrollElement.scrollTop 0
                return scrollElement if isScrollable

    scrollElem = scrollableElement("html", "body")
    locationPath = filterPath(location.pathname)
    # for each href that has a hash pointing on the same page
    $("a[href*=#]").each ->
        thisPath = filterPath(@pathname) or locationPath
        if locationPath is thisPath and (location.hostname is @hostname or not @hostname) and @hash.replace(/#/, "")
            target = @hash
            if target
                $target = $(@hash)
                targetOffset = $target.offset().top
                $(this).click (event) ->
                    # try harder to find the scrollable element
                    if scrollElem is undefined
                        scrollElem = scrollableElement("html", "body")
                    if scrollElem isnt undefined
                        event.preventDefault()
                        $(scrollElem).animate
                            scrollTop: targetOffset
                        , 400, ->
                            location.hash = target
