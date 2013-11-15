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

        many = parseInt window.innerHeight / 250
        manyH = 250 * many
        size = 250 + (window.innerHeight - manyH) / many

        len = $('.box').length
        if size isnt window.innerHeight then len += 1

        $(".slider").css
            height: window.innerHeight
            width: parseInt(len / many) * 250

        $(".box").css
            height: size

        if size isnt window.innerHeight
            $(".box.me").css
                height: size * 2

    render: =>
        @$el.html @template {
            name: "Sabin Marcu"
            tagline: "Gotta code this shit"
            things: [
                {
                    title: "Thing1"
                    tagline: "Thing1 explained in short"
                    image: "image1"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                }, {
                    title: "Thing2"
                    tagline: "Thing2 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image2"
                }, {
                    title: "Thing3"
                    tagline: "Thing3 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image3"
                }, {
                    title: "Thing4"
                    tagline: "Thing4 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image4"
                }, {
                    title: "Thing1"
                    tagline: "Thing1 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image1"
                }, {
                    title: "Thing2"
                    tagline: "Thing2 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image2"
                }, {
                    title: "Thing3"
                    tagline: "Thing3 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image3"
                }, {
                    title: "Thing4"
                    tagline: "Thing4 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image4"
                }, {
                    title: "Thing1"
                    tagline: "Thing1 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image1"
                }, {
                    title: "Thing2"
                    tagline: "Thing2 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image2"
                }, {
                    title: "Thing3"
                    tagline: "Thing3 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image3"
                }, {
                    title: "Thing4"
                    tagline: "Thing4 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image4"
                }, {
                    title: "Thing1"
                    tagline: "Thing1 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image1"
                }, {
                    title: "Thing2"
                    tagline: "Thing2 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image2"
                }, {
                    title: "Thing3"
                    tagline: "Thing3 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image3"
                }, {
                    title: "Thing4"
                    tagline: "Thing4 explained in short"
                    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, sapiente, aliquid, quaerat iste numquam sint quae esse pariatur sed praesentium nihil voluptatum placeat at expedita dolores ipsum corporis enim repudiandae."
                    image: "image4"
                }
            ]
        }
        @