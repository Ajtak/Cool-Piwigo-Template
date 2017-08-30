<footer class="main-footer">
    <div class="pull-right hidden-xs">
        {if isset($debug.TIME) }
            {'Page generated in'|translate} {$debug.TIME} ({$debug.NB_QUERIES} {'SQL queries in'|translate} {$debug.SQL_TIME}) -
        {/if}

        {'Contact'|translate}
        <a href="mailto:{$CONTACT_MAIL}?subject={'A comment on your site'|translate|escape:url}">{'Webmaster'|translate}</a>
    </div>

    {'Powered by'|translate}
    <a class="externalLink tiptip" href="{$PHPWG_URL}" title="{'Visit Piwigo project website'|translate}"><span
                class="Piwigo">Piwigo</span></a>
    {$VERSION}
    <a class="externalLink tiptip" href="{$pwgmenu.WIKI}" title="{'Read Piwigo Documentation'|translate}"><i
                class="icon-book"></i>{'Documentation'|translate}</a>
    <a class="externalLink tiptip" href="{$pwgmenu.FORUM}" title="{'Get Support on Piwigo Forum'|translate}"><i
                class="icon-lifebuoy"></i>{'Support'|translate}</a>

</footer>

</div>

{combine_script id='jquery.tipTip' load='footer' path='themes/default/js/plugins/jquery.tipTip.minified.js'}

{combine_script id='bootstrap' load='footer' path='admin/themes/cool/assets/bootstrap/js/bootstrap.min.js'}
{combine_script id='app' load='footer'  require='bootstrap' path='admin/themes/cool/assets/dist/js/app.min.js'}


<!-- BEGIN get_combined -->
{get_combined_scripts load='footer'}
<!-- END get_combined -->


</body>
</html>
