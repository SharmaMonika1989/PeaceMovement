<div id="responsive-menu" >
    <div id="responsive-menu-title"> World Peace Movement</div>
    <div class="menu-top-mobile-menu-container">
        <ul id="menu-top-mobile-menu" class="responsive-menu">
            <li id="menu-item-6463" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-6463 menu-item-home first-menu-item"><a href="#">Home</a></li>
            <li id="menu-item-6464" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6464 menu-item-introduction "><a href="#">Introduction</a></li>
            <li id="menu-item-6465" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6465 menu-item-vedas "><a href="#">Founder's Message</a></li>
            <li id="menu-item-6465" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6465 menu-item-vedas "><a href="#">Courses We Offer</a>
                <ul class="sub-menu">
                    <li id="menu-item-6471" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6471 menu-item-samhitas "><a href="#">Transcendental Meditation</a></li>
                    <li id="menu-item-6471" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6471 menu-item-samhitas "><a href="#">TM Siddhi Programme</a></li>
                    <li id="menu-item-6471" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6471 menu-item-samhitas "><a href="#">TMTTC</a></li>
                    <li id="menu-item-6471" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6471 menu-item-samhitas "><a href="#">Maharishi Yoga</a></li>
                    <li id="menu-item-6471" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6471 menu-item-samhitas "><a href="#">Maharishi Vastu</a></li>
                    <li id="menu-item-6471" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6471 menu-item-samhitas "><a href="#">Maharishi Jyotish</a></li>
                    <li id="menu-item-6471" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6471 menu-item-samhitas "><a href="#">Panchkarma</a></li>  
                </ul>
            </li>

            <li id="menu-item-6466" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6466 menu-item-vedangas "><a href="#">Service We Provide</a>
                <ul class="sub-menu">
                    <li id="menu-item-6475" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6475 menu-item-shiksha "><a href="#">Transcendental Meditation</a></li>
                    <li id="menu-item-6476" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6476 menu-item-kalpa "><a href="#">TM Siddhi</a></li>
                    <li id="menu-item-6477" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6477 menu-item-vyakarana "><a href="#">Panchkarma</a></li>
                    <li id="menu-item-6478" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6478 menu-item-nirukta "><a href="#">Vedic Greens</a></li>
                </ul>
            </li>
            <li id="menu-item-6468" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6468 menu-item-present-context-2 "><a href="#">News & Articles</a>
                <ul class="sub-menu">
                    <li id="menu-item-6481" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6481 menu-item-aeronautics "><a href="#">E-Gyan</a></li>
                    <li id="menu-item-6482" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6482 menu-item-astronomy "><a href="#">E-News Letter</a></li>
                    <li id="menu-item-6483" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6483 menu-item-cosmology "><a href="#">MWPM</a></li>
                    <li id="menu-item-6484" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6484 menu-item-mathematics "><a href="#">Mahamedia Magazine</a></li>
                </ul>
            </li>
            <li id="menu-item-6469" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6469 menu-item-about-project-2 "><a href="#">Registration</a></li>
            <li id="menu-item-6470" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6470 menu-item-contact-us last-menu-item"><a href="#">Contact Us</a></li>
        </ul>
    </div>
    <form action="#" id="responsiveSearch" method="get" role="search">
        <input type="search" name="s" value="" placeholder="Search" id="responsiveSearchInput">
        <input type="submit" id="responsiveSearchSubmit" />
    </form>
</div>


<div id="click-menu" 
     class="overlay"
     role="button" 
     aria-label="Responsive Menu Button">
    <div class="threeLines" id="RM3Lines">
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
    </div>
</div>
<script>var $RMjQuery = jQuery.noConflict();
    $RMjQuery(document).ready(function () {
        var isOpen = false;
        $RMjQuery(document).on('click', '#click-menu', function () {
            $RMjQuery('#responsive-menu').css('height', $RMjQuery(document).height());
            !isOpen ? openRM() : closeRM()
        });
        function openRM() {
            $RMjQuery('#responsive-menu').css('display', 'block');
            $RMjQuery('#responsive-menu').addClass('RMOpened');
            $RMjQuery('#click-menu').addClass('click-menu-active');
            $RMjQuery('#responsive-menu').stop().animate({left: "0"}, 500, 'linear', function () {
                $RMjQuery('#responsive-menu').css('height', $RMjQuery(document).height());
                isOpen = true
            })
        }
        function closeRM() {
            $RMjQuery('#responsive-menu').animate({left: -$RMjQuery('#responsive-menu').width()}, 500, 'linear', function () {
                $RMjQuery('#responsive-menu').css('display', 'none');
                $RMjQuery('#responsive-menu').removeClass('RMOpened');
                $RMjQuery('#click-menu').removeClass('click-menu-active');
                isOpen = false
            })
        }
        $RMjQuery(window).resize(function () {
            $RMjQuery('#responsive-menu').stop(true, true);
            $RMjQuery('#responsive-menu').css('height', $RMjQuery(document).height());
            if ($RMjQuery(window).width() > 800) {
                if ($RMjQuery('#responsive-menu').css('left') != -$RMjQuery('#responsive-menu').width()) {
                    closeRM()
                }
            }
        });
        $RMjQuery('#responsive-menu ul ul').css('display', 'none');
        $RMjQuery('#responsive-menu .current_page_ancestor.menu-item-has-children').children('ul').css('display', 'block');
        $RMjQuery('#responsive-menu .current-menu-ancestor.menu-item-has-children').children('ul').css('display', 'block');
        $RMjQuery('#responsive-menu .current-menu-item.menu-item-has-children').children('ul').css('display', 'block');
        $RMjQuery('#responsive-menu .current_page_ancestor.page_item_has_children').children('ul').css('display', 'block');
        $RMjQuery('#responsive-menu .current-menu-ancestor.page_item_has_children').children('ul').css('display', 'block');
        $RMjQuery('#responsive-menu .current-menu-item.page_item_has_children').children('ul').css('display', 'block');
        var clickLink = '<span class=\"appendLink rm-append-inactive\"><img src="images/arrow.png" class="img-responsive" width="15px" height="15px"></span>';
        var clickedLink = '<span class=\"appendLink rm-append-active\"><img src="images/arrow.png" class="img-responsive" width="15px" height="15px"></span>';
        $RMjQuery('#responsive-menu .responsive-menu li').each(function () {
            if ($RMjQuery(this).children('ul').length > 0) {
                if ($RMjQuery(this).find('> ul').css('display') == 'none') {
                    $RMjQuery(this).prepend(clickLink)
                } else {
                    $RMjQuery(this).prepend(clickedLink)
                }
            }
        });
        $RMjQuery('.appendLink').on('click', function () {
            $RMjQuery(this).nextAll('#responsive-menu ul ul').slideToggle();
            $RMjQuery(this).html($RMjQuery(this).hasClass('rm-append-active') ? '<img src="images/arrow.png" class="img-responsive" width="15px" height="15px">' : '<img src="images/arrow.png" class="img-responsive" width="15px" height="15px">');
            $RMjQuery(this).toggleClass('rm-append-active rm-append-inactive');
            $RMjQuery('#responsive-menu').css('height', $RMjQuery(document).height())
        });
        $RMjQuery('.rm-click-disabled').on('click', function () {
            $RMjQuery(this).nextAll('#responsive-menu ul ul').slideToggle();
            $RMjQuery(this).siblings('.appendLink').html($RMjQuery(this).hasClass('rm-append-active') ? '?' : '?');
            $RMjQuery(this).toggleClass('rm-append-active rm-append-inactive');
            $RMjQuery('#responsive-menu').css('height', $RMjQuery(document).height())
        });
        $RMjQuery('.rm-append-inactive').siblings('ul').css('display', 'none')
    });</script><!-- Newsletter plugin footer file --> <script type="text/javascript">
        jQuery(document).ready(function ($) {
            jQuery('#dc_jqaccordion_widget-3-item .menu').dcAccordion({
                eventType: 'click',
                hoverDelay: 0,
                menuClose: false,
                autoClose: true,
                saveState: false,
                autoExpand: false,
                classExpand: 'current-menu-item',
                classDisable: '',
                showCount: false,
                disableLink: false,
                cookie: 'dc_jqaccordion_widget-3',
                speed: 'slow'
            });
        });
</script>
<link rel='stylesheet' id='mediaelement-css'  href='css/mediaelementplayer.min.css?ver=2.18.1' type='text/css' media='all' />
<link rel='stylesheet' id='wp-mediaelement-css'  href='css/wp-mediaelement.min.css?ver=4.5.4' type='text/css' media='all' />
<script type='text/javascript' src='css/jquery.form.min.js?ver=3.51.0-2014.06.20'></script> 
<script type='text/javascript' src='css/collapse.js?ver=1.6.0'></script> 
<script type='text/javascript' src='css/jquery.cookie.min.js?ver=1.4.1'></script> 
<script type='text/javascript' src='css/functions.js?ver=20150330'></script> 
<script type='text/javascript' src='css/mediaelement-and-player.min.js?ver=2.18.1-a'></script> 
<script type='text/javascript' src='css/wp-mediaelement.min.js?ver=4.5.4'></script> 
<script type="text/javascript" src="css/vedic-script.js"></script> 
