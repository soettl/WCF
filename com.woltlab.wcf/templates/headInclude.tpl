<base href="{$baseHref}" />
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="format-detection" content="telephone=no" />
{if $allowSpidersToIndexThisPage|empty}<meta name="robots" content="noindex,nofollow" />{/if} 
{implode from=$__wcf->getMetaTagHandler() item=__metaTag glue="\n"}{@$__metaTag}{/implode}
{event name='metaTags'}

<script>
	//<![CDATA[
	var SID_ARG_2ND	= '{@SID_ARG_2ND_NOT_ENCODED}';
	var WCF_PATH = '{@$__wcf->getPath()}';
	var SECURITY_TOKEN = '{@SECURITY_TOKEN}';
	var LANGUAGE_ID = {@$__wcf->getLanguage()->languageID};
	var TIME_NOW = {@TIME_NOW};
	//]]>
</script>
{if JQUERY_SOURCE == 'google'}
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.1/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
{elseif JQUERY_SOURCE == 'microsoft'}
<script src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.1.min.js"></script>
<script src="//ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/jquery-ui.min.js"></script>
{elseif JQUERY_SOURCE == 'cloudflare'}
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.1/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
{else}
<script src="{@$__wcf->getPath()}js/3rdParty/jquery.min.js?v={@$__wcfVersion}"></script>
<script src="{@$__wcf->getPath()}js/3rdParty/jquery-ui.min.js?v={@$__wcfVersion}"></script>
{/if}
{if JQUERY_SOURCE != 'local'}
<script>
	//<![CDATA[
	if (!window.jQuery) {
		document.write('<script src="{@$__wcf->getPath()}js/3rdParty/jquery.min.js?v={@$__wcfVersion}"><\/script>');
		document.write('<script src="{@$__wcf->getPath()}js/3rdParty/jquery-ui.min.js?v={@$__wcfVersion}"><\/script>');
	}
	//]]>
</script>
{/if}
<script src="{@$__wcf->getPath()}js/3rdParty/jquery-ui.nestedSortable.js?v={@$__wcfVersion}"></script>
<script src="{@$__wcf->getPath()}js/3rdParty/jquery-ui.timepicker.min.js?v={@$__wcfVersion}"></script>
<script src="{@$__wcf->getPath()}js/WCF{if !ENABLE_DEBUG_MODE}.min{/if}.js?v={@$__wcfVersion}"></script>
<script>
	//<![CDATA[
	WCF.User.init({@$__wcf->user->userID}, '{@$__wcf->user->username|encodeJS}');
	//]]>
</script>
<script src="{@$__wcf->getPath()}js/WCF.Message{if !ENABLE_DEBUG_MODE}.min{/if}.js?v={@$__wcfVersion}"></script>
<script src="{@$__wcf->getPath()}js/WCF.User{if !ENABLE_DEBUG_MODE}.min{/if}.js?v={@$__wcfVersion}"></script>
<script src="{@$__wcf->getPath('wcf')}js/WCF.Like{if !ENABLE_DEBUG_MODE}.min{/if}.js?v={@$__wcfVersion}"></script>
{event name='javascriptInclude'}

<!-- Stylesheets -->
{@$__wcf->getStyleHandler()->getStylesheet()}
{event name='stylesheets'}

<noscript>
	<style type="text/css">
		.jsOnly {
			display: none !important;
		}
		
		.noJsOnly {
			display: block !important;
		}
	</style>
</noscript>

<script>
	//<![CDATA[
	$(function() {
		WCF.Language.addObject({
			'__days': [ '{lang}wcf.date.day.sunday{/lang}', '{lang}wcf.date.day.monday{/lang}', '{lang}wcf.date.day.tuesday{/lang}', '{lang}wcf.date.day.wednesday{/lang}', '{lang}wcf.date.day.thursday{/lang}', '{lang}wcf.date.day.friday{/lang}', '{lang}wcf.date.day.saturday{/lang}' ],
			'__daysShort': [ '{lang}wcf.date.day.sun{/lang}', '{lang}wcf.date.day.mon{/lang}', '{lang}wcf.date.day.tue{/lang}', '{lang}wcf.date.day.wed{/lang}', '{lang}wcf.date.day.thu{/lang}', '{lang}wcf.date.day.fri{/lang}', '{lang}wcf.date.day.sat{/lang}' ],
			'__months': [ '{lang}wcf.date.month.january{/lang}', '{lang}wcf.date.month.february{/lang}', '{lang}wcf.date.month.march{/lang}', '{lang}wcf.date.month.april{/lang}', '{lang}wcf.date.month.may{/lang}', '{lang}wcf.date.month.june{/lang}', '{lang}wcf.date.month.july{/lang}', '{lang}wcf.date.month.august{/lang}', '{lang}wcf.date.month.september{/lang}', '{lang}wcf.date.month.october{/lang}', '{lang}wcf.date.month.november{/lang}', '{lang}wcf.date.month.december{/lang}' ], 
			'__monthsShort': [ '{lang}wcf.date.month.jan{/lang}', '{lang}wcf.date.month.feb{/lang}', '{lang}wcf.date.month.mar{/lang}', '{lang}wcf.date.month.apr{/lang}', '{lang}wcf.date.month.may{/lang}', '{lang}wcf.date.month.jun{/lang}', '{lang}wcf.date.month.jul{/lang}', '{lang}wcf.date.month.aug{/lang}', '{lang}wcf.date.month.sep{/lang}', '{lang}wcf.date.month.oct{/lang}', '{lang}wcf.date.month.nov{/lang}', '{lang}wcf.date.month.dec{/lang}' ],
			'wcf.clipboard.item.unmarkAll': '{lang}wcf.clipboard.item.unmarkAll{/lang}',
			'wcf.date.relative.now': '{lang}wcf.date.relative.now{/lang}',
			'wcf.date.relative.minutes': '{capture assign=relativeMinutes}{lang}wcf.date.relative.minutes{/lang}{/capture}{@$relativeMinutes|encodeJS}',
			'wcf.date.relative.hours': '{capture assign=relativeHours}{lang}wcf.date.relative.hours{/lang}{/capture}{@$relativeHours|encodeJS}',
			'wcf.date.relative.pastDays': '{capture assign=relativePastDays}{lang}wcf.date.relative.pastDays{/lang}{/capture}{@$relativePastDays|encodeJS}',
			'wcf.date.dateFormat': '{lang}wcf.date.dateFormat{/lang}',
			'wcf.date.dateTimeFormat': '{lang}wcf.date.dateTimeFormat{/lang}',
			'wcf.date.hour': '{lang}wcf.date.hour{/lang}',
			'wcf.date.minute': '{lang}wcf.date.minute{/lang}',
			'wcf.date.timeFormat': '{lang}wcf.date.timeFormat{/lang}',
			'wcf.global.button.add': '{lang}wcf.global.button.add{/lang}',
			'wcf.global.button.cancel': '{lang}wcf.global.button.cancel{/lang}',
			'wcf.global.button.close': '{lang}wcf.global.button.close{/lang}',
			'wcf.global.button.collapsible': '{lang}wcf.global.button.collapsible{/lang}',
			'wcf.global.button.delete': '{lang}wcf.global.button.delete{/lang}',
			'wcf.global.button.disable': '{lang}wcf.global.button.disable{/lang}',
			'wcf.global.button.disabledI18n': '{lang}wcf.global.button.disabledI18n{/lang}',
			'wcf.global.button.edit': '{lang}wcf.global.button.edit{/lang}',
			'wcf.global.button.enable': '{lang}wcf.global.button.enable{/lang}',
			'wcf.global.button.next': '{lang}wcf.global.button.next{/lang}',
			'wcf.global.button.preview': '{lang}wcf.global.button.preview{/lang}',
			'wcf.global.button.reset': '{lang}wcf.global.button.reset{/lang}',
			'wcf.global.button.save': '{lang}wcf.global.button.save{/lang}',
			'wcf.global.button.search': '{lang}wcf.global.button.search{/lang}',
			'wcf.global.button.submit': '{lang}wcf.global.button.submit{/lang}',
			'wcf.global.confirmation.cancel': '{lang}wcf.global.confirmation.cancel{/lang}',
			'wcf.global.confirmation.confirm': '{lang}wcf.global.confirmation.confirm{/lang}',
			'wcf.global.confirmation.title': '{lang}wcf.global.confirmation.title{/lang}',
			'wcf.global.decimalPoint': '{capture assign=decimalPoint}{lang}wcf.global.decimalPoint{/lang}{/capture}{$decimalPoint|encodeJS}',
			'wcf.global.error.timeout': '{lang}wcf.global.error.timeout{/lang}',
			'wcf.global.error.title': '{lang}wcf.global.error.title{/lang}',
			'wcf.global.form.error.empty': '{lang}wcf.global.form.error.empty{/lang}',
			'wcf.global.language.noSelection': '{lang}wcf.global.language.noSelection{/lang}',
			'wcf.global.loading': '{lang}wcf.global.loading{/lang}',
			'wcf.global.page.jumpTo': '{lang}wcf.global.page.jumpTo{/lang}',
			'wcf.global.page.jumpTo.description': '{lang}wcf.global.page.jumpTo.description{/lang}',
			'wcf.global.page.pageNavigation': '{lang}wcf.global.page.pageNavigation{/lang}',
			'wcf.global.page.next': '{capture assign=pageNext}{lang}wcf.global.page.next{/lang}{/capture}{@$pageNext|encodeJS}',
			'wcf.global.page.previous': '{capture assign=pagePrevious}{lang}wcf.global.page.previous{/lang}{/capture}{@$pagePrevious|encodeJS}',
			'wcf.global.success': '{lang}wcf.global.success{/lang}',
			'wcf.global.success.add': '{lang}wcf.global.success.add{/lang}',
			'wcf.global.success.edit': '{lang}wcf.global.success.edit{/lang}',
			'wcf.global.thousandsSeparator': '{capture assign=thousandsSeparator}{lang}wcf.global.thousandsSeparator{/lang}{/capture}{@$thousandsSeparator|encodeJS}',
			'wcf.page.sitemap': '{lang}wcf.page.sitemap{/lang}',
			'wcf.style.changeStyle': '{lang}wcf.style.changeStyle{/lang}'
			{if MODULE_LIKE}
				,'wcf.like.button.like': '{lang}wcf.like.button.like{/lang}',
				'wcf.like.button.dislike': '{lang}wcf.like.button.dislike{/lang}',
				'wcf.like.tooltip': '{lang}wcf.like.jsTooltip{/lang}',
				'wcf.like.summary': '{lang}wcf.like.summary{/lang}',
				'wcf.like.details': '{lang}wcf.like.details{/lang}'
			{/if}
			
			{event name='javascriptLanguageImport'}
		});
		
		if (jQuery.browser.touch) $('html').addClass('touch');
		new WCF.Date.Time();
		new WCF.Effect.SmoothScroll();
		new WCF.Effect.BalloonTooltip();
		new WCF.Sitemap();
		{if $__wcf->getStyleHandler()->countStyles() > 1}new WCF.Style.Chooser();{/if}
		WCF.Dropdown.init();
		WCF.System.PageNavigation.init('.pageNavigation');
		WCF.Date.Picker.init();
		WCF.System.MobileNavigation.init();
		new WCF.User.ProfilePreview();
		
		{event name='javascriptInit'}
		
		{if $executeCronjobs}
			new WCF.Action.Proxy({
				autoSend: true,
				data: {
					className: 'wcf\\data\\cronjob\\CronjobAction',
					actionName: 'executeCronjobs'
				},
				showLoadingOverlay: false,
				failure: function() {
					return false;
				}
			});
		{/if}
		{if $__sessionKeepAlive|isset}
			new WCF.System.KeepAlive({@$__sessionKeepAlive});
		{/if}
	});
	//]]>
</script>
 <!--[IF IE 9]>
 <script>
 	$(function() {
 		function fixButtonTypeIE9() {
 			$('button').each(function(index, button) {
 				var $button = $(button);
 				if (!$button.attr('type')) {
 					$button.attr('type', 'button');
 				}
 			});
 		}
 		
 		WCF.DOMNodeInsertedHandler.addCallback('WCF.FixButtonTypeIE9', fixButtonTypeIE9);
 		fixButtonTypeIE9();
 	});
 </script>
 <![ENDIF]-->

{include file='imageViewer'}