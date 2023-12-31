<div class="modal-header">
  <h6 class="modal-title">{__("People Who Donated To This")}</h6>
  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
  {if $users}
    <ul>
      {foreach $users as $_user}
        {include file='__feeds_user.tpl' _tpl="list" _connection=$_user["connection"] _donation=$_user['donation_amount'] _donation_time=$_user['donation_time']}
      {/foreach}
    </ul>

    {if count($users) >= $system['max_results']}
      <!-- see-more -->
      <div class="alert alert-info see-more js_see-more" data-get="donors" data-id="{$id}">
        <span>{__("See More")}</span>
        <div class="loader loader_small x-hidden"></div>
      </div>
      <!-- see-more -->
    {/if}
  {else}
    <p class="text-center text-muted">
      {__("No people donated for this")}
    </p>
  {/if}
</div>