<aside class="main-sidebar">
    <section class="sidebar">

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">ADMINISTRATION</li>
            <li class="active"><a href="{$U_ADMIN}"><i class="icon-television"></i>
                    <span> {'Dashboard'|@translate}</span></a></li>


            <li class="treeview">
                <a href="#"><i class="icon-picture"></i> <span> {'Photos'|@translate}</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{$U_ADD_PHOTOS}"><i class="icon-plus-circled"></i> {'Add'|@translate}</a></li>
                    <li><a href="{$U_RATING}"><i class="icon-star"></i> {'Rating'|@translate}</a></li>
                    <li><a href="{$U_TAGS}"><i class="icon-tags"></i> {'Tags'|@translate}</a></li>
                    <li><a href="{$U_RECENT_SET}"><i class="icon-clock"></i> {'Recent photos'|@translate}</a></li>
                    <li><a href="{$U_BATCH}"><i class="icon-pencil"></i> {'Batch Manager'|@translate}</a></li>
                    {if $NB_PHOTOS_IN_CADDIE > 0}
                        <li><a href="{$U_CADDIE}"><i class="icon-flag"></i> {'Caddie'|@translate}<span
                                        class="adminMenubarCounter">{$NB_PHOTOS_IN_CADDIE}</span></a></li>
                    {/if}
                    {if $NB_ORPHANS > 0}
                        <li><a href="{$U_ORPHANS}"><i class="icon-heart-broken"></i>{'Orphans'|@translate}<span
                                        class="adminMenubarCounter"> {$NB_ORPHANS}</span></a></li>
                    {/if}
                </ul>
            </li>

            <li class="treeview">
                <a href="#"><i class="icon-sitemap"></i> <span> {'Albums'|@translate}</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{$U_CATEGORIES}"><i class="icon-folder-open"></i> {'Manage'|@translate}</a></li>
                    <li><a href="{$U_CAT_OPTIONS}"><i class="icon-pencil"></i> {'Properties'|@translate}</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#"><i class="icon-users"></i> <span> {'Users'|@translate}</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{$U_USERS}"><i class="icon-user-add"></i> {'Manage'|@translate}</a></li>
                    <li><a href="{$U_GROUPS}"><i class="icon-group"></i> {'Groups'|@translate}</a></li>
                    <li><a href="{$U_NOTIFICATION_BY_MAIL}"><i class="icon-mail-1"></i> {'Notification'|@translate}</a>
                    </li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="icon-puzzle"></i> <span>{'Plugins'|@translate}</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{$U_PLUGINS}"><i class="icon-equalizer"></i> {'Manage'|@translate}</a></li>

                    {if !empty($plugin_menu_items)}
                        <li>
                            <a href="{$U_PLUGINS}"><i class="fa fa-circle-o"></i> {'Manage'|@translate}
                                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                            </a>

                            <ul class="treeview-menu">
                                {foreach from=$plugin_menu_items item=menu_item}
                                    <li><a href="{$menu_item.URL}">{$menu_item.NAME}</a></li>
                                {/foreach}

                            </ul>
                        </li>
                    {/if}

                </ul>
            </li>

            <li class="treeview">
                <a href="#"><i class="icon-wrench"></i> <span> {'Tools'|@translate}</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    {if $ENABLE_SYNCHRONIZATION}
                        <li><a href="{$U_CAT_UPDATE}"><i class="icon-exchange"></i> {'Synchronize'|@translate}</a></li>
                        <li><a href="{$U_SITE_MANAGER}"><i class="icon-flow-branch"></i> {'Site manager'|@translate}</a>
                        </li>
                    {/if}
                    <li><a href="{$U_HISTORY_STAT}"><i class="icon-signal"></i> {'History'|@translate}</a></li>
                    <li><a href="{$U_MAINTENANCE}"><i class="icon-tools"></i> {'Maintenance'|@translate}</a></li>
                    {if isset($U_COMMENTS)}
                        <li><a href="{$U_COMMENTS}"><i class="icon-chat"></i>{'Comments'|@translate}
                                {if $NB_PENDING_COMMENTS > 0}
                                    <span class="adminMenubarCounter"
                                          title="{'%d waiting for validation'|translate:$NB_PENDING_COMMENTS}">{$NB_PENDING_COMMENTS}</span>
                                {/if}</a></li>
                    {/if}
                    <li><a href="{$U_UPDATES}"><i class="icon-arrows-cw"></i> {'Updates'|@translate}</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#"><i class="icon-cog"></i> <span> {'Configuration'|@translate}</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{$U_CONFIG_GENERAL}"><i class="icon-cog-alt"></i> {'Options'|@translate}</a></li>
                    <li><a href="{$U_CONFIG_MENUBAR}"><i class="icon-menu"></i> {'Menu Management'|@translate}</a></li>
                    <li><a href="{$U_CONFIG_EXTENTS}"><i class="icon-code"></i> {'Templates'|@translate}</a></li>
                    <li><a href="{$U_CONFIG_LANGUAGES}"><i class="icon-language"></i> {'Languages'|@translate}</a></li>
                    <li><a href="{$U_CONFIG_THEMES}"><i class="icon-brush"></i> {'Themes'|@translate}</a></li>
                </ul>
            </li>

        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">


    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-body with-border">
                        {if isset($TABSHEET)}
                            {$TABSHEET}
                        {/if}
                        {if isset($U_HELP)}
                            {combine_script id='core.scripts' load='async' path='themes/default/js/scripts.js'}
                            <ul class="HelpActions">
                                <li><a href="{$U_HELP}" onclick="popuphelp(this.href); return false;"
                                       title="{'Help'|@translate}"><img
                                                src="{$ROOT_URL}{$themeconf.admin_icon_dir}/help.png" alt="(?)"></a>
                                </li>
                            </ul>
                        {/if}

                        <div class="eiw">
                            {if isset($errors)}
                                <div class="errors">
                                    <i class="eiw-icon icon-cancel"></i>
                                    <ul>
                                        {foreach from=$errors item=error}
                                            <li>{$error}</li>
                                        {/foreach}
                                    </ul>
                                </div>
                            {/if}

                            {if isset($infos)}
                                <div class="infos">
                                    <i class="eiw-icon icon-ok"></i>
                                    <ul>
                                        {foreach from=$infos item=info}
                                            <li>{$info}</li>
                                        {/foreach}
                                    </ul>
                                </div>
                            {/if}

                            {if isset($warnings)}
                                <div class="warnings">
                                    <i class="eiw-icon icon-attention"></i>
                                    <ul>
                                        {foreach from=$warnings item=warning}
                                            <li>{$warning}</li>
                                        {/foreach}
                                    </ul>
                                </div>
                            {/if}

                            {if isset($messages)}
                                <div class="messages">
                                    <i class="eiw-icon icon-info-circled-1"></i>
                                    <ul>
                                        {foreach from=$messages item=message}
                                            <li>{$message}</li>
                                        {/foreach}
                                    </ul>
                                </div>
                            {/if}

                        </div> {* .eiw *}
                        {$ADMIN_CONTENT}
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
