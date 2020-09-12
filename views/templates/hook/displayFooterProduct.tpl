{*
* 2020 Pittica S.r.l.s.
*
*  @author    Lucio Benini <info@pittica.com>
*  @copyright 2020 Pittica S.r.l.s.
*  @license   http://opensource.org/licenses/LGPL-3.0  The GNU Lesser General Public License, version 3.0 (LGPL-3.0)
*}

<section class="product-nutritionfacts mt-3">
	<div class="card card-block">
		{if $nutritionfacts->composition}
		<h4 class="h4 card-title">{l s='Ingredients' mod='pitticanutritionalfacts'}</h4>
		{if $nutritionfacts->composition_unit}
		<div class="mb-1">
			<small>{l s='Ingredients per %s' mod='pitticanutritionalfacts' sprintf=[$nutritionfacts->composition_unit]}</small>
		</div>
		{/if}
		{$nutritionfacts->composition nofilter}
		{/if}
		{if $nutritionfacts->additives}
		<h4 class="h4 card-title">{l s='Additives' mod='pitticanutritionalfacts'}</h4>
		{if $nutritionfacts->additives_unit}
		<div class="mb-1">
			<small>{l s='Additives per %s' mod='pitticanutritionalfacts' sprintf=[$nutritionfacts->additives_unit]}</small>
		</div>
		{/if}
		{$nutritionfacts->additives nofilter}
		{/if}
		{if $nutritionfacts->analysis}
		<h4 class="h4 card-title">{l s='Analysis' mod='pitticanutritionalfacts'}</h4>
		{if $nutritionfacts->analysis_unit}
		<div class="mb-1">
			<small>{l s='Analysis per %s' mod='pitticanutritionalfacts' sprintf=[$nutritionfacts->analysis_unit]}</small>
		</div>
		{/if}
		{$nutritionfacts->analysis nofilter}
		{/if}
		{if $nutritionfacts->additional_data}
		<h4 class="h4 card-title">{l s='Additional Data' mod='pitticanutritionalfacts'}</h4>
		{$nutritionfacts->additional_data nofilter}
		{/if}
		{$nutritionfacts->analysis nofilter}
		{if $nutritionfacts->quantity}
		<h4 class="h4 card-title">{l s='Quantity' mod='pitticanutritionalfacts'}</h4>
		{$nutritionfacts->quantity nofilter}
		{/if}
	</div>
</section>
