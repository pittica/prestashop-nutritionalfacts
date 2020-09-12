{*
* 2020 Pittica S.r.l.s.
*
*  @author    Lucio Benini <info@pittica.com>
*  @copyright 2020 Pittica S.r.l.s.
*  @license   http://opensource.org/licenses/LGPL-3.0  The GNU Lesser General Public License, version 3.0 (LGPL-3.0)
*}

<h2>{l s='Nutritional Facts' mod='pitticanutritionalfacts'}</h2>
<div class="summary-description-container">
	<ul class="nav nav-tabs bordered">
		<li id="tab_nutritionfacts_composition" class="nav-item"><a href="#nutritionfacts-composition" data-toggle="tab" class="nav-link description-tab active">{l s='Ingredients' mod='pitticanutritionalfacts'}</a></li>
		<li id="tab_nutritionfacts_additives" class="nav-item"><a href="#nutritionfacts-additives" data-toggle="tab" class="nav-link description-tab">{l s='Additives' mod='pitticanutritionalfacts'}</a></li>
		<li id="tab_nutritionfacts_analysis" class="nav-item"><a href="#nutritionfacts-analysis" data-toggle="tab" class="nav-link description-tab">{l s='Analysis' mod='pitticanutritionalfacts'}</a></li>
		<li id="tab_nutritionfacts_additionaldata" class="nav-item"><a href="#nutritionfacts-additionaldata" data-toggle="tab" class="nav-link description-tab">{l s='Additional Data' mod='pitticanutritionalfacts'}</a></li>
		<li id="tab_nutritionfacts_quantity" class="nav-item"><a href="#nutritionfacts-quantity" data-toggle="tab" class="nav-link description-tab">{l s='Quantity' mod='pitticanutritionalfacts'}</a></li>
	</ul>
	<div class="tab-content bordered">
		<div class="tab-pane panel panel-default active" id="nutritionfacts-composition">
			<div class="translations tabbable" id="nutritionfacts-composition-input">
				<div class="translationsFields tab-content">
					{foreach from=$languages item=language}
						<div data-locale="{$language.iso_code}" class="translationsFields-{$language.id_lang} tab-pane translation-field{if $default_language == $language.id_lang} show active{/if} translation-label-{$language.iso_code}">
							<textarea id="form_nutritionfacts_composition_{$language.id_lang}" name="nutritionfacts[composition][{$language.id_lang}]" class="autoload_rte form-control">{$nutritionfacts->composition[$language.id_lang]}</textarea>
							<div class="form-group mt-4 p-3">
								<div class="input-group mt-1">
									<div class="input-group-prepend">
										<span class="input-group-text">{l s='Ingredients per' mod='pitticanutritionalfacts'}</span>
									</div>
									<input type="text" id="form_nutritionfacts_composition_unit" name="nutritionfacts[composition_unit][{$language.id_lang}]" class="form-control" value="{$nutritionfacts->composition_unit[$language.id_lang]}" />
								</div>
							</div>
						</div>
					{/foreach}
				</div>
			</div>
		</div>
		<div class="tab-pane panel panel-default" id="nutritionfacts-additives">
			<div class="translations tabbable" id="nutritionfacts-additives-input">
				<div class="translationsFields tab-content">
					{foreach from=$languages item=language}
						<div data-locale="{$language.iso_code}" class="translationsFields-{$language.id_lang} tab-pane translation-field{if $default_language == $language.id_lang} show active{/if} translation-label-{$language.iso_code}">
							<textarea id="form_nutritionfacts_additives_{$language.id_lang}" name="nutritionfacts[additives][{$language.id_lang}]" class="autoload_rte form-control">{$nutritionfacts->additives[$language.id_lang]}</textarea>
							<div class="form-group mt-4 p-3">
								<div class="input-group mt-1">
									<div class="input-group-prepend">
										<span class="input-group-text">{l s='Additives per' mod='pitticanutritionalfacts'}</span>
									</div>
									<input type="text" id="form_nutritionfacts_additives_unit" name="nutritionfacts[additives_unit][{$language.id_lang}]" class="form-control" value="{$nutritionfacts->additives_unit[$language.id_lang]}" />
								</div>
							</div>
						</div>
					{/foreach}
				</div>
			</div>
		</div>
		<div class="tab-pane panel panel-default" id="nutritionfacts-analysis">
			<div class="translations tabbable" id="nutritionfacts-analysis-input">
				<div class="translationsFields tab-content">
					{foreach from=$languages item=language}
						<div data-locale="{$language.iso_code}" class="translationsFields-{$language.id_lang} tab-pane translation-field{if $default_language == $language.id_lang} show active{/if} translation-label-{$language.iso_code}">
							<textarea id="form_nutritionfacts_analysis_{$language.id_lang}" name="nutritionfacts[analysis][{$language.id_lang}]" class="autoload_rte form-control">{$nutritionfacts->analysis[$language.id_lang]}</textarea>
							<div class="form-group mt-4 p-3">
								<div class="input-group mt-1">
									<div class="input-group-prepend">
										<span class="input-group-text">{l s='Analysis per' mod='pitticanutritionalfacts'}</span>
									</div>
									<input type="text" id="form_nutritionfacts_analysis_unit" name="nutritionfacts[analysis_unit][{$language.id_lang}]" class="form-control" value="{$nutritionfacts->analysis_unit[$language.id_lang]}" />
								</div>
							</div>
						</div>
					{/foreach}
				</div>
			</div>
		</div>
		<div class="tab-pane panel panel-default" id="nutritionfacts-additionaldata">
			<div class="translations tabbable" id="nutritionfacts-additionaldata-input">
				<div class="translationsFields tab-content">
					{foreach from=$languages item=language}
						<div data-locale="{$language.iso_code}" class="translationsFields-{$language.id_lang} tab-pane translation-field{if $default_language == $language.id_lang} show active{/if} translation-label-{$language.iso_code}">
							<textarea id="form_nutritionfacts_additional_data_{$language.id_lang}" name="nutritionfacts[additional_data][{$language.id_lang}]" class="autoload_rte form-control">{$nutritionfacts->additional_data[$language.id_lang]}</textarea>
						</div>
					{/foreach}
				</div>
			</div>
		</div>
		<div class="tab-pane panel panel-default" id="nutritionfacts-quantity">
			<div class="translations tabbable" id="nutritionfacts-quantity-input">
				<div class="translationsFields tab-content">
					{foreach from=$languages item=language}
						<div data-locale="{$language.iso_code}" class="translationsFields-{$language.id_lang} tab-pane translation-field{if $default_language == $language.id_lang} show active{/if} translation-label-{$language.iso_code}">
							<textarea id="form_nutritionfacts_quantity_{$language.id_lang}" name="nutritionfacts[quantity][{$language.id_lang}]" class="autoload_rte form-control">{$nutritionfacts->quantity[$language.id_lang]}</textarea>
						</div>
					{/foreach}
				</div>
			</div>
		</div>
	</div>
</div>