module.exports = class IndexView extends Backbone.View

    className: 'index'
    template: require 'views/templates/index'
    el: '#app'

    initialize: ->
        console.log "Initialized"
        do @render; do @_resize
        window.addEventListener "resize", @_resize

    _resize: =>
        console.log "Resizing"
        @$el.css
            height: "#{300 * (parseInt(window.innerHeight / 300) + 1)}px"
            width: "#{(parseInt(($('.box').length - 1) / 3) + 1) * 300}px"

    render: =>
        @$el.html @template {
            name: "Sabin Marcu"
            tagline: "Gotta code this shit"
            things: [
                {
                    title: "Thing1"
                    tagline: "Thing1 explained in short"
                    image: "image1"
                }, {
                    title: "Thing2"
                    tagline: "Thing2 explained in short"
                    image: "image2"
                }, {
                    title: "Thing3"
                    tagline: "Thing3 explained in short"
                    image: "image3"
                }, {
                    title: "Thing4"
                    tagline: "Thing4 explained in short"
                    image: "image4"
                }, {
                    title: "Thing1"
                    tagline: "Thing1 explained in short"
                    image: "image1"
                }, {
                    title: "Thing2"
                    tagline: "Thing2 explained in short"
                    image: "image2"
                }, {
                    title: "Thing3"
                    tagline: "Thing3 explained in short"
                    image: "image3"
                }, {
                    title: "Thing4"
                    tagline: "Thing4 explained in short"
                    image: "image4"
                }, {
                    title: "Thing1"
                    tagline: "Thing1 explained in short"
                    image: "image1"
                }, {
                    title: "Thing2"
                    tagline: "Thing2 explained in short"
                    image: "image2"
                }, {
                    title: "Thing3"
                    tagline: "Thing3 explained in short"
                    image: "image3"
                }, {
                    title: "Thing4"
                    tagline: "Thing4 explained in short"
                    image: "image4"
                }, {
                    title: "Thing1"
                    tagline: "Thing1 explained in short"
                    image: "image1"
                }, {
                    title: "Thing2"
                    tagline: "Thing2 explained in short"
                    image: "image2"
                }, {
                    title: "Thing3"
                    tagline: "Thing3 explained in short"
                    image: "image3"
                }, {
                    title: "Thing4"
                    tagline: "Thing4 explained in short"
                    image: "image4"
                }
            ]
        }
        @