<!DOCTYPE html>

<html lang="{$lang_info.code}" dir="{$lang_info.direction}">
<head>
    <meta charset="{$CONTENT_ENCODING}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{$GALLERY_TITLE} :: {$PAGE_TITLE}</title>

    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="shortcut icon" type="image/x-icon" href="{$ROOT_URL}{$themeconf.icon_dir}/favicon.ico">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

    {strip}
        {combine_css path="admin/themes/default/fontello/css/fontello.css" order=-10}
        {assign "theme_id" ""}
        {foreach from=$themes item=theme}
            {assign "theme_id" $theme.id}

            {if $theme.load_css}
                {combine_css path="admin/themes/cool/assets/bootstrap/css/bootstrap.min.css" order=-10}
                {combine_css path="admin/themes/cool/assets/AdminLTE/dist/css/AdminLTE.min.css" order=-10}
                {combine_css path="admin/themes/cool/assets/AdminLTE/dist/css/skins/skin-blue.min.css" order=-10}
                {combine_css path="admin/themes/cool/theme.css" order=-10}
            {/if}
            {if !empty($theme.local_head)}
                {include file=$theme.local_head load_css=$theme.load_css}
            {/if}
        {/foreach}

        {combine_script id='jquery' path='admin/themes/cool/assets/jQuery/jquery.min.js'}

    {/strip}

    <!-- BEGIN get_combined -->
    {get_combined_css}

    {get_combined_scripts load='header'}
    <!-- END get_combined -->

    {if not empty($head_elements)}
        {foreach from=$head_elements item=elt}
            {$elt}
        {/foreach}
    {/if}


    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">

        <a href="admin.php" class="logo hidden-xs">
            <span class="logo-lg">{$GALLERY_TITLE}</span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#"><i class="icon-user hidden-xs"></i>{$USERNAME}</a>
                    </li>
                    <li>
                        <a href="{$U_RETURN}" title="{'Visit Gallery'|translate}"><i class="icon-eye"></i><span class="hidden-xs">{'Visit Gallery'|translate}</span></a>
                    </li>
                    <li>
                        {strip}
                            <a href="{$U_CHANGE_THEME}" class="tiptip"
                               title="{'Switch to clear or dark colors for administration'|translate}">
                                {if $theme_id eq "clear"}
                                    <i class="icon-moon-inv"></i>
                                    <span class="hidden-xs">Dark</span>
                                {elseif $theme_id eq "roma"}
                                    <i class="icon-sun-inv"></i>
                                    <span class="hidden-xs">Light</span>
                                {elseif $theme_id eq "cool"}
                                    <i class="icon-sun-inv"></i>
                                    <span class="hidden-xs">Cool</span>

                                {/if}

                            </a>
                        {/strip}
                    </li>
                    <li>
                        <a class="tiptip" href="{$U_FAQ}" title="{'Instructions to use Piwigo'|@translate}"><i
                                    class="icon-help-circled"></i><span class="hidden-xs">{'Help Me'|translate}</span></a>
                    </li>
                    <li>
                        <a href="{$U_LOGOUT}"><i class="icon-logout"></i><span class="hidden-xs">{'Logout'|translate}</span></a>
                    </li>

                </ul>
            </div>
        </nav>
    </header>
