<!DOCTYPE html>
<html lang="<?= MY_LANGUAGE_ABBR ?>">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" /> 
        <meta name="description" content="<?= $description ?>" />
        <meta name="keywords" content="<?= $keywords ?>" />
        <meta property="og:title" content="<?= $title ?>" />
        <meta property="og:description" content="<?= $description ?>" />
        <meta property="og:url" content="<?= LANG_URL ?>" />
        <meta property="og:type" content="website" />
        <meta property="og:image" content="<?= base_url('assets/img/site-overview.png') ?>" />
        <title><?= $title ?></title>
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="<?= base_url('templatecss/bootstrap.css') ?>" rel="stylesheet" />
        <link href="<?= base_url('templatecss/style.css') ?>" rel="stylesheet" />
        <script src="<?= base_url('templatejs/jquery-1.11.1.min.js') ?>"></script>


        <script type="text/javascript" src="<?= base_url('templatejs/move-top.js') ?>"></script>
        <script type="text/javascript" src="<?= base_url('templatejs/easing.js') ?>"></script>
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $(".scroll").click(function(event){
                    event.preventDefault();
                    $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
                });
            });
        </script>
        <script src="<?= base_url('loadlanguage/all.js') ?>"></script>
        <!-- start-smoth-scrolling -->
        <link href="<?= base_url('assets/css/font-awesome.min.css') ?>" rel="stylesheet">
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
        <!-- for bootstrap working -->
        <script src="<?= base_url('templatejs/bootstrap.js') ?>"></script>
        <!-- //for bootstrap working -->
    </head>
