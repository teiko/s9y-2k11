{serendipity_hookPlugin hook="entries_header"}
<h2>{$CONST.TOPICS_OF} {$dateRange.0|@formatTime:"%B %Y"}</h2>

<ul class="archives_summary plainList">
{foreach from=$entries item="sentries"}
    {foreach from=$sentries.entries item="entry"}
    <li><a href="{$entry.link}">{$entry.title}</a>
        <span class="serendipity_byline">{$CONST.POSTED_BY} <a href="{$entry.link_author}">{$entry.author}</a> {$CONST.ON} <time datetime="{$entry.timestamp|@formatTime:'%Y-%m-%dT%H:%M:%S'}" pubdate>{$entry.timestamp|@formatTime:$template_option.date_format}</time></span>
    </li>
    {/foreach}
{/foreach}
</ul>
{serendipity_hookPlugin hook="entries_footer"}