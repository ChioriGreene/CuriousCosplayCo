(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-51602202-1', 'curiouscosplay.co');
ga('send', 'pageview');

$('.textarea').wysihtml5({
"font-styles": true, //Font styling, e.g. h1, h2, etc. Default true
"emphasis": true, //Italics, bold, etc. Default true
"lists": true, //(Un)ordered lists, e.g. Bullets, Numbers. Default true
"html": true, //Button which allows you to edit the generated HTML. Default false
"link": true, //Button to insert a link. Default true
"image": true, //Button to insert an image. Default true,
"color": true, //Button to change color of font  
"blockquote": false, //Blockquote  
"size": "md" //default: none, other options are xs, sm, lg
});

var tagApi = jQuery(".tm-input").tagsManager({
  prefilled: ["Text"],
  CapitalizeFirstLetter: true,
  replace: true,
  hiddenTagListName: "tags"
});

jQuery(".tm-input").typeahead({
  name: 'countries',
  limit: 15,
  prefetch: '/ajax/countries/json'
}).on('typeahead:selected', function (e, d) {

  tagApi.tagsManager("pushTag", d.value);

});

jQuery(function($) {
    $('.modal').on('submit','form[data-async]', function(event) {
        var $form = $(this);
        var target = $form.attr('data-target');

        $.ajax({
            type: $form.attr('method'),
            url: $form.attr('action'),
            data: $form.serialize(),

            success: function(data, status) {
                $.each(target.split("|"),function(i,val){
                    if(val == "close"){
                        $form.closest(".modal").modal("hide");
                    }else if(val == "event"){
                        $form.trigger("ajax-submit");
                    }else if(val == "reset"){
                        $form.get(0).reset();
                    }else{
                        $(val).html(data);
                    }
                });
            }
        });

        event.preventDefault();
    });
});