<div class="col-md-9 col-xs-12">
{if !empty($error) OR !empty($noerror)}
    <div class="alert alert-warning">
	{if !empty($error)}
        <p>{$error}</p>
	{/if}
	{if !empty($noerror)}
        <p>{$noerror}</p>
	{/if}
    </div>
{/if}
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['temppw']}</h3>
        </div>
        <table style="width:100%" class="table" cellpadding="1" cellspacing="0">
            <thead>
                <tr>
                    <th>Nickname</th>
                    <th>Uid</th>
                    <th>Desc</th>
                    <th>Passwort</th>
                    <th>Start</th>
                    <th>Ende</th>
                    <th>Channel</th>
                    <th>Option</th>
                </tr>
            </thead>
            {if !empty($temppwlist)}
            {foreach key=id item=temppw from=$temppwlist}
            <tr>
                <td class="green1" align="center">{$temppw.nickname}</td>
                <td class="green1" align="center">{$temppw.uid}</td>
                <td class="green1" align="center">{$temppw.desc}</td>
                <td class="green1" align="center">{$temppw.pw_clear}</td>
                <td class="green1" align="center">{$temppw.start}</td>
                <td class="green1" align="center">{$temppw.end}</td>
                <td class="green1" align="center">{$temppw.tcid}</td>
                <td class="green1" align="center">
                <form method="post" action="index.php?site=temppw&amp;sid={$sid}">
                <input name="pw" value="{$temppw.pw_clear}" type="hidden">
                <input class="delete" name="temppwdel" value="" title="L&ouml;schen" type="submit">
                </form>
                </td>
            </tr>
            {/foreach}
            {/if}
        </table>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['create']} {$lang['temppw']}</h3>
        </div>
        <form method="post" action="index.php?site=temppw&amp;sid={$sid}">
        <table class="table" cellpadding="1" cellspacing="0">
            <tr>
                <td class="green1">{$lang['password']}</td>
                <td class="green1"><input type="text" name="password" value="" /></td>
            </tr>
            <tr>
                <td class="green2">{$lang['duration']}</td>
                <td class="green2"><input type="text" name="duration" value="" /></td>
            </tr>
            <tr>
                <td class="green1">{$lang['description']}</td>
                <td class="green1"><input type="text" name="description" value="" /></td>
            </tr>
            <tr>
                <td class="green2">{$lang['channel']}</td>
                <td class="green2">
                <select name="tcid">
                {foreach key=id item=channel from=$channellist}
                <option value="{$channel.cid}">{$channel.channel_name}</option>
                {/foreach}
                </select>
            </tr>
            <tr>
                <td class="green1">{$lang['option']}</td>
                <td class="green1"><input type="submit" name="create" value="{$lang['create']}" /></td>
            </tr>
        </table>
        </form>
    </div>
</div>