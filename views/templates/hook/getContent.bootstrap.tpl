{**
* 2013-2015 Froggy Commerce
*
* NOTICE OF LICENSE
*
* You should have received a licence with this module.
* If you didn't buy this module on Froggy-Commerce.com, ThemeForest.net
* or Addons.PrestaShop.com, please contact us immediately : contact@froggy-commerce.com
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to benefit the updates
* for newer PrestaShop versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author Froggy Commerce <contact@froggy-commerce.com>
*  @copyright  2013-2015 Froggy Commerce
*}
<h2 align="center">Froggy History</h2>
<div class="bootstrap">
    <fieldset id="froggyhistory-fieldset">
            <legend><img src="{$froggyhistory.module_dir|escape:'html':'UTF-8'}logo.png" alt="" width="16" />{l s='Froggy History' mod='froggyhistory'}</legend>
            <div class="panel col-lg-5">
                <div id="froggyhistory-introduction-configuration">

                {if $froggyhistory.confirm eq 'ok'}
                    <div class="module_confirmation conf confirm alert alert-success">{l s='The configuration has been successfully updated.' mod='froggyhistory'}</div>
                {/if}
                    <form action="" method="POST" class="defaultForm form-horizontal">
                        <div class="panel-heading">
                            {l s='Configuration' mod='froggyhistory'}
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-3">{l s='Only store stock movement:' mod='froggyhistory'}</label>
                            <div class="col-lg-9">
                                <div class="checkbox"><input type="checkbox" name="FH_LOG_STOCK_ONLY"{if $froggyhistory.FH_LOG_STOCK_ONLY} checked="checked"{/if} /></div>
                                <p class="help-block">
                                    {l s='If you enable this option, only stock movement will be stored.' mod='froggyhistory'}<br>
                                    {l s='Reference, ean13 and upc will be stored too.' mod='froggyhistory'}<br>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-3">
                                {l s='Notification e-mail:' mod='froggyhistory'}
                            </label>
                            <div class="col-lg-9">
                                <input type="text" name="FH_LOG_NOTIF_EMAIL" value="{$froggyhistory.FH_LOG_NOTIF_EMAIL}" />
                                <p class="help-block">
                                    {l s='E-mail address that will receive daily summary.' mod='froggyhistory'}<br>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-3">
                                {l s='Delete history older than:' mod='froggyhistory'}
                                <p class="help-block">({l s='days' mod='froggyhistory'})</p>
                            </label>
                            <div class="col-lg-9">
                                <input type="text" name="FH_DELETE_AFTER" value="{$froggyhistory.FH_DELETE_AFTER|intval}" />
                                <p class="help-block">
                                {l s='This option permits you to delete automatically history older than X days.' mod='froggyhistory'}<br>
                                {l s='You can set it to "0" if you want to keep history and never delete it.' mod='froggyhistory'}<br>
                                {l s='However, keeping history indefinitely can slow your shop.' mod='froggyhistory'}<br>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-3">{l s='Archive deleted history in log files:' mod='froggyhistory'}</label>
                            <div class="col-lg-9">
                                <div class="checkbox"><input type="checkbox" name="FH_LOG_DELETED"{if $froggyhistory.FH_LOG_DELETED} checked="checked"{/if} /></div>
                                <p class="help-block">
                                {l s='This option permits you to archive your history in log file on your hard drive server.' mod='froggyhistory'}<br>
                                {l s='When history is deleted (after X days), this option will backup the history in a log file on your server.' mod='froggyhistory'}<br>
                                {l s='If you enable it, be sure to check regularly the free space on your hard drive server.' mod='froggyhistory'}<br>
                                {if !$froggyhistory.archives_directory_is_writable}<span style="color:red">{l s='Beware, the directory "%s" of your module is not writable, your history won\'t be archived.' sprintf=$froggyhistory.archives_directory mod='froggyhistory'}</span><br>{/if}
                                </p>
                            </div>
                        </div>
                        <p align="center"><input type="submit" class="btn btn-default" name="froggyhistory-submit" id="froggyhistory-submit" value="{l s='Validate' mod='froggyhistory'}" /></p>
                    </form>


                    <h3>{l s='Presentation' mod='froggyhistory'}</h3>
                    <p>{l s='On the right of this screen, you will be able to see the actions history of all your employees since this module has been installed.' mod='froggyhistory'}</p>

                    <p>{l s='You can also access to product history on the product administration forms.' mod='froggyhistory'}</p>
                    <p>
                        <a href="{$froggyhistory.module_dir|escape:'html':'UTF-8'}views/img/screen-catalog-{$froggyhistory.ps_version|escape:'html':'UTF-8'}.png">
                            <img src="{$froggyhistory.module_dir|escape:'html':'UTF-8'}views/img/screen-catalog-{$froggyhistory.ps_version|escape:'html':'UTF-8'}.png" />
                        </a>
                        <a href="{$froggyhistory.module_dir|escape:'html':'UTF-8'}views/img/screen-product-{$froggyhistory.ps_version|escape:'html':'UTF-8'}.png">
                            <img src="{$froggyhistory.module_dir|escape:'html':'UTF-8'}views/img/screen-product-{$froggyhistory.ps_version|escape:'html':'UTF-8'}.png" height="250" />
                        </a>
                    </p>

                    <p>{l s='At last, on every employee profile, you will be able to see his actions history.' mod='froggyhistory'}</p>
                    <p>
                        <a href="{$froggyhistory.module_dir|escape:'html':'UTF-8'}views/img/screen-administration-{$froggyhistory.ps_version|escape:'html':'UTF-8'}.png">
                            <img src="{$froggyhistory.module_dir|escape:'html':'UTF-8'}views/img/screen-administration-{$froggyhistory.ps_version|escape:'html':'UTF-8'}.png" />
                        </a>
                        <a href="{$froggyhistory.module_dir|escape:'html':'UTF-8'}views/img/screen-employee-{$froggyhistory.ps_version|escape:'html':'UTF-8'}.png">
                            <img src="{$froggyhistory.module_dir|escape:'html':'UTF-8'}views/img/screen-employee-{$froggyhistory.ps_version|escape:'html':'UTF-8'}.png" width="250" />
                        </a>
                    </p>

                </div>
            </div>
            <div class="panel col-lg-offset-1 col-lg-6">
                <div id="froggyhistory-general-history">
                    <p>
                    <h3>{l s='General History' mod='froggyhistory'}</h3>
                    <ul id="froggyhistory-list">
                        <li class="loader-gif"><img src="..{$module_dir}views/img/loader.gif" /></li>
                    </ul>
                    </p>
                </div>
            </div>
        <script>$(document).ready(function() { loadFroggyHistoryLog('{FroggyDisplaySafeHtml s=$froggyhistory.url}'); });</script>
    </fieldset>
</div>