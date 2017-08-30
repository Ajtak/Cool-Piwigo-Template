{if isset($tabsheet) and count($tabsheet)}
    <div id="tabsheet">
        <ul class="nav nav-tabs">
            {foreach from=$tabsheet key=name item=sheet}
                <li class="{if ($name == $tabsheet_selected)}active{/if}">
                    <a href="{$sheet.url}"><span>{$sheet.caption}</span></a>
                </li>
            {/foreach}
        </ul>
    </div>
{/if}
