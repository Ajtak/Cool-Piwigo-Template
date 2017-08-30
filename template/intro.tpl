{include file='include/colorbox.inc.tpl'}

{combine_script id='jquery.cluetip' load='async' require='jquery' path='themes/default/js/plugins/jquery.cluetip.js'}

{footer_script require='jquery.cluetip'}
    var piwigo_need_update_msg = '
    <a href="admin.php?page=updates">{'A new version of Piwigo is available.'|@translate|@escape:"javascript"} <i
                class="icon-right"></i></a>
    ';
    var ext_need_update_msg = '
    <a href="admin.php?page=updates&amp;tab=ext">{'Some upgrades are available for extensions.'|@translate|@escape:"javascript"}
        <i class="icon-right"></i></a>
    ';

{literal}
    jQuery().ready(function(){
    jQuery('.cluetip').cluetip({
    width: 300,
    splitTitle: '|',
    positionBy: 'bottomTop'
    });
    jQuery.ajax({
    type: 'GET',
    url: 'ws.php',
    dataType: 'json',
    data: { method: 'pwg.extensions.checkUpdates', format: 'json' },
    timeout: 5000,
    success: function (data) {
    if (data['stat'] != 'ok')
    return;
    piwigo_update = data['result']['piwigo_need_update'];
    ext_update = data['result']['ext_need_update']
    if ((piwigo_update || ext_update) && !jQuery(".warnings").is('div'))
    jQuery(".eiw").prepend('
    <div class="warnings"><i class="eiw-icon icon-attention"></i>
        <ul></ul>
    </div>
    ');
    if (piwigo_update)
    jQuery(".warnings ul").append('
    <li>'+piwigo_need_update_msg+'</li>
    ');
    if (ext_update)
    jQuery(".warnings ul").append('
    <li>'+ext_need_update_msg+'</li>
    ');
    }
    });
    });
{/literal}
{/footer_script}

<h2>{'Piwigo Administration'|@translate}</h2>


<div class="row">

    {if $NB_PHOTOS > 1}
        <a href="{$U_ADD_PHOTOS}">
            <div class="col-md-3">
                <div class="info-box bg-blue-gradient">
                    <span class="info-box-icon "><i class="icon-picture"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{'Photos'|translate}</span>
                        <span class="info-box-number">{$NB_PHOTOS}</span>
                    </div>
                </div>
            </div>
        </a>
    {/if}

    {if $NB_ALBUMS > 1}
        <a href="{$U_CATEGORIES}">
            <div class="col-md-3">
                <div class="info-box bg-blue-gradient">
                    <span class="info-box-icon "><i class="icon-sitemap"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{'Albums'|translate}</span>
                        <span class="info-box-number">{$NB_ALBUMS}</span>
                    </div>
                </div>
            </div>
        </a>
    {/if}

    {if $NB_TAGS > 1}
        <a href="{$U_TAGS}">
            <div class="col-md-3">
                <div class="info-box bg-blue-gradient">
                    <span class="info-box-icon "><i class="icon-tags"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{'Tags'|translate}</span>
                        <span class="info-box-number">{$NB_TAGS}</span>
                    </div>
                </div>
            </div>
        </a>
    {/if}

    {if $NB_USERS > 2}
        <a href="{$U_USERS}">
            <div class="col-md-3">
                <div class="info-box bg-blue-gradient">
                    <span class="info-box-icon "><i class="icon-users"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{'Users'|translate}</span>
                        <span class="info-box-number">{$NB_USERS}</span>
                    </div>
                </div>
            </div>
        </a>
    {/if}

    {if $NB_GROUPS > 0}
        <a href="{$U_GROUPS}">
            <div class="col-md-3">
                <div class="info-box bg-blue-gradient">
                    <span class="info-box-icon"><i class="icon-group"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{'Groups'|translate}</span>
                        <span class="info-box-number">{$NB_GROUPS}</span>
                    </div>
                </div>
            </div>
        </a>
    {/if}

    {if $NB_COMMENTS > 1}
        <a href="{$U_COMMENTS}">
            <div class="col-md-3">
                <div class="info-box bg-blue-gradient">
                    <span class="info-box-icon"><i class="icon-chat"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{'Comments'|translate}</span>
                        <span class="info-box-number">{$NB_COMMENTS}</span>
                    </div>
                </div>
            </div>
        </a>
    {/if}

    {if $NB_RATES > 0}
        <a href="{$U_RATING}">
            <div class="col-md-3">
                <div class="info-box bg-blue-gradient">
                    <span class="info-box-icon"><i class="icon-star"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{'Rating'|translate}</span>
                        <span class="info-box-number">{$NB_RATES}</span>
                    </div>
                </div>
            </div>
        </a>
    {/if}

    {if $NB_VIEWS > 0}
        <a href="{$U_HISTORY_STAT}">
            <div class="col-md-3">
                <div class="info-box bg-blue-gradient">
                    <span class="info-box-icon"><i class="icon-signal"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{'Pages seen'|translate}</span>
                        <span class="info-box-number">{$NB_VIEWS}</span>
                    </div>
                </div>
            </div>
        </a>
    {/if}

    {if $NB_PLUGINS > 0}
        <a href="{$U_PLUGINS}">
            <div class="col-md-3">
                <div class="info-box bg-blue-gradient">
                    <span class="info-box-icon"><i class="icon-puzzle"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{'Plugins'|translate}</span>
                        <span class="info-box-number">{$NB_PLUGINS}</span>
                    </div>
                </div>
            </div>
        </a>
    {/if}


    <div class="col-md-3">
        <div class="info-box bg-blue-gradient">
            <span class="info-box-icon"><i class="icon-hdd"></i></span>
            <div class="info-box-content">
                <span class="info-box-text">{'Storage used'|translate}</span>
                <span class="info-box-number">{$STORAGE_USED}</span>
            </div>
        </div>
    </div>

    {if $NB_PHOTOS > 1}
        <div class="col-md-3">
            <div class="info-box bg-blue-gradient">
                <span class="info-box-icon"><i class="icon-back-in-time"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">{'First photo added'|translate}</span>
                    <span class="info-box-number">{$first_added_age}</span>
                </div>
            </div>
        </div>
    {/if}

</div> {* .stat-boxes *}

<p class="showCreateAlbum">
    {if $ENABLE_SYNCHRONIZATION}
        <a href="{$U_QUICK_SYNC}" class="icon-exchange">{'Quick Local Synchronization'|translate}</a>
    {/if}

    <br><a href="{$U_CHECK_UPGRADE}" class="icon-arrows-cw">{'Check for upgrade'|@translate}</a>

    {if isset($SUBSCRIBE_BASE_URL)}
        <br>
        <a href="{$SUBSCRIBE_BASE_URL}{$EMAIL}" class="externalLink cluetip icon-mail-alt"
           title="{'Piwigo Announcements Newsletter'|@translate}|{'Keep in touch with Piwigo project, subscribe to Piwigo Announcement Newsletter. You will receive emails when a new release is available (sometimes including a security bug fix, it\'s important to know and upgrade) and when major events happen to the project. Only a few emails a year.'|@translate|@htmlspecialchars|@nl2br}">{'Subscribe %s to Piwigo Announcements Newsletter'|@translate:$EMAIL}</a>
    {/if}
</p>
