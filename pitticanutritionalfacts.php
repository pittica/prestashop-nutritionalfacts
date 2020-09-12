<?php

/**
 * 2020 Pittica S.r.l.s.
 *
 * @author    Lucio Benini <info@pittica.com>
 * @copyright 2020 Pittica S.r.l.s.
 * @license   http://opensource.org/licenses/LGPL-3.0  The GNU Lesser General Public License, version 3.0 ( LGPL-3.0 )
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

require_once(dirname(__FILE__) . '/classes/ProductNutritionalFacts.php');

class PitticaNutritionalFacts extends Module
{
    protected $config_form = false;

    public function __construct()
    {
        $this->name          = 'pitticanutritionalfacts';
        $this->tab           = 'front_office_features';
        $this->version       = '1.0.0';
        $this->author        = 'Pittica';
        $this->need_instance = 1;

        parent::__construct();

        $this->displayName = $this->l('Nutritional Facts');
        $this->description = $this->l('Nutritional facts and additional data.');

        $this->ps_versions_compliancy = array(
            'min' => '1.7',
            'max' => _PS_VERSION_
        );
    }

    public function install()
    {
        include(dirname(__FILE__) . '/sql/install.php');

        return parent::install() && $this->registerHook('actionProductAdd') && $this->registerHook('actionProductUpdate') && $this->registerHook('actionProductDelete') && $this->registerHook('displayAdminProductsMainStepLeftColumnBottom') && $this->registerHook('displayFooterProduct');
    }

    public function uninstall()
    {
        include(dirname(__FILE__) . '/sql/uninstall.php');

        return parent::uninstall();
    }

    public function hookActionProductDelete($params)
    {
        if (isset($params['id_product'])) {
            $object = new ProductNutritionalFacts($params['id_product']);
            $object->delete();
        }
    }

    public function hookActionProductAdd($params)
    {
        if (isset($params['id_product'])) {
            if (isset($params['id_product_old'])) {
                $old = new ProductNutritionalFacts((int) $params['id_product_old']);
                $new = new ProductNutritionalFacts((int) $params['id_product']);

                $values = $this->getValues();

                $new->id_product       = (int) $params['id_product'];
                $new->composition_unit = $old->composition_unit;
                $new->composition      = $old->composition;
                $new->additives_unit   = $old->additives_unit;
                $new->additives        = $old->additives;
                $new->analysis_unit    = $old->analysis_unit;
                $new->analysis         = $old->analysis;
                $new->additional_data  = $old->additional_data;
                $new->quantity  = $old->quantity;

                $new->save();
            } else {
                $this->fillObject((int) $params['id_product']);
            }
        }
    }

    public function hookActionProductUpdate($params)
    {
        if (isset($params['id_product'])) {
            $this->fillObject((int) $params['id_product']);
        }
    }

    public function hookDisplayFooterProduct($params)
    {
        $this->context->smarty->assign('nutritionfacts', new ProductNutritionalFacts((int) Tools::getValue('id_product'), (int) Configuration::get('PS_LANG_DEFAULT')));

        return $this->fetch('module:' . $this->name . '/views/templates/hook/displayFooterProduct.tpl');
    }

    public function hookDisplayAdminProductsMainStepLeftColumnBottom($params)
    {
        $this->context->smarty->assign(array(
            'languages' => Language::getLanguages(true),
            'default_language' => (int) Configuration::get('PS_LANG_DEFAULT'),
            'nutritionfacts' => new ProductNutritionalFacts((int) $params['id_product'])
        ));

        return $this->fetch('module:' . $this->name . '/views/templates/hook/displayAdminProductsMainStepLeftColumnBottom.tpl');
    }

    private function fillObject($id_product)
    {
        $values = $this->getValues();

        $object                   = new ProductNutritionalFacts((int) $id_product);
        $object->id_product       = (int) $id_product;
        $object->composition_unit = $values['composition_unit'];
        $object->composition      = $values['composition'];
        $object->additives_unit   = $values['additives_unit'];
        $object->additives        = $values['additives'];
        $object->analysis_unit    = $values['analysis_unit'];
        $object->analysis         = $values['analysis'];
        $object->additional_data  = $values['additional_data'];
        $object->quantity  = $values['quantity'];

        $object->save();
    }

    private function getValues()
    {
        $values = array(
            'composition_unit' => '',
            'composition' => '',
            'additives_unit' => '',
            'additives' => '',
            'analysis_unit' => '',
            'analysis' => '',
            'additional_data' => '',
            'quantity' => ''
        );

        $form = Tools::getValue('nutritionfacts');

        foreach ($values as $key => &$value) {
            if (isset($form[$key])) {
                $value = $form[$key];
            }
        }

        return $values;
    }
}
