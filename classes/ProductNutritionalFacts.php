<?php
/**
* 2020 Pittica S.r.l.s.
*
* @author    Lucio Benini <info@pittica.com>
* @copyright 2020 Pittica S.r.l.s.
* @license   http://opensource.org/licenses/LGPL-3.0  The GNU Lesser General Public License, version 3.0 ( LGPL-3.0 )
*/

class ProductNutritionalFacts extends ObjectModel
 {
    const TABLE_NAME = 'pittica_nutritionalfacts';

    public $id_product;
    public $composition_unit;
    public $composition;
    public $additives_unit;
    public $additives;
    public $analysis_unit;
    public $analysis;
    public $additional_data;
    public $quantity;

    public static $definition = array(
        'table' => self::TABLE_NAME,
        'primary' => 'id_product',
        'multilang' => true,
        'fields' => array(
            'id_product' => array( 'type' => self::TYPE_INT, 'validate' => 'isUnsignedId', 'required' => true ),
            'composition_unit' => array( 'type' => self::TYPE_STRING, 'validate' => 'isString', 'required' => false, 'size' => 254, 'lang' => true ),
            'composition' => array( 'type' => self::TYPE_HTML, 'validate' => 'isString', 'required' => false, 'lang' => true ),
            'additives_unit' => array( 'type' => self::TYPE_STRING, 'validate' => 'isString', 'required' => false, 'size' => 254, 'lang' => true ),
            'additives' => array( 'type' => self::TYPE_HTML, 'validate' => 'isString', 'required' => false, 'lang' => true ),
            'analysis_unit' => array( 'type' => self::TYPE_STRING, 'validate' => 'isString', 'required' => false, 'size' => 254, 'lang' => true ),
            'analysis' => array( 'type' => self::TYPE_HTML, 'validate' => 'isString', 'required' => false, 'lang' => true ),
            'additional_data' => array( 'type' => self::TYPE_HTML, 'validate' => 'isString', 'required' => false, 'lang' => true ),
            'quantity' => array( 'type' => self::TYPE_HTML, 'validate' => 'isString', 'required' => false, 'lang' => true )
        )
    );
}
