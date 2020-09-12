<?php
/**
 * 2020 Pittica S.r.l.s.
 *
 * @author    Lucio Benini <info@pittica.com>
 * @copyright 2020 Pittica S.r.l.s.
 * @license   http://opensource.org/licenses/LGPL-3.0  The GNU Lesser General Public License, version 3.0 (LGPL-3.0)
 */

$sql = array();
$sql[] = 'DROP TABLE IF EXISTS `' . _DB_PREFIX_ . ProductNutritionalFacts::TABLE_NAME . '`;';
$sql[] = 'DROP TABLE IF EXISTS `' . _DB_PREFIX_ . ProductNutritionalFacts::TABLE_NAME . '_lang`;';

foreach ($sql as $query) {
    if (Db::getInstance()->execute($query) == false) {
        return false;
    }
}
