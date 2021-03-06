<form name="advancedsearch" class="form-horizontal" method="post" action="index.php?page=advancedsearch">
    {foreach $advanced_search_criteria as $item}
    {$type=$attributes_map.{$item}.type}
    {$faclass=$attributes_map.{$item}.faclass}
    {include 'search_displayer.tpl' label={$msg_label_{$item}} item=$item type=$type faclass=$faclass ldap_params=$ldap_params}
    {/foreach}
    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-9">
            <button type="submit" name="submit" value="search" class="btn btn-success"><i class="fa fa-fw fa-search"></i> {$msg_search}</button>
            {if {$use_csv}}<button type="submit" name="submit" value="csv" class="btn btn-info"><i class="fa fa-fw fa-download"></i> {$msg_downloadcsv}</button>{/if}
        </div>
    </div>
</form>
