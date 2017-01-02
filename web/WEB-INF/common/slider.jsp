<div class="banner">
    <div class="cycloneslider cycloneslider-template-responsive" id="cycloneslider-home-1" >
        <div class="cycloneslider-slides"><img src="images/img1-900-200.png" class="img-responsive" alt="slide"/>
            <div class="cycloneslider-slide"><img src="images/img2-900-200.png" class="img-responsive" alt="slide"/></div>
            <div class="cycloneslider-slide"><img src="images/img3-900-200.png" class="img-responsive" alt="slide"/></div>
            <div class="cycloneslider-slide"><img src="images/img4-900-200.png" class="img-responsive" alt="slide"/></div>
            <div class="cycloneslider-slide"><img src="images/img5-900-200.png" class="img-responsive" alt="slide"/></div>
            <div class="cycloneslider-slide"><img src="images/img6-900-200.png" class="img-responsive" alt="slide"/></div>
            <div class="cycloneslider-slide"><img src="images/img7-900-200.png" class="img-responsive" alt="slide"/></div>

            <div class="cycloneslider-slide"><img src="images/img11-900-200.png" class="img-responsive" alt="slide"/></div>
            <div class="cycloneslider"></div><a href="#" class="cycloneslider-prev"></a>
            <a href="#" class="cycloneslider-next"></a>

        </div>
    </div>
    <script type="text/javascript">jQuery(document).ready(function () {
            (function () {
                var slider = '#cycloneslider-home-1';
                jQuery(slider + ' .cycloneslider-slides').cycle({fx: "scrollLeft", speed: 1000,
                    timeout: 4000, pager: jQuery(slider + ' .cycloneslider-pager'), prev: jQuery(slider + ' .cycloneslider-prev'),
                    next: jQuery(slider + ' .cycloneslider-next'), slideExpr: '.cycloneslider-slide', slideResize: false, pause: true});
            })();
        });
    </script> 
</div>