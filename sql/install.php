<?php
/**
 * 2020 Pittica S.r.l.s.
 *
 * @author    Lucio Benini <info@pittica.com>
 * @copyright 2020 Pittica S.r.l.s.
 * @license   http://opensource.org/licenses/LGPL-3.0  The GNU Lesser General Public License, version 3.0 (LGPL-3.0)
 */

$sql = array();

$sql[] = 'CREATE TABLE IF NOT EXISTS `' . _DB_PREFIX_ . ProductNutritionalFacts::TABLE_NAME . '` (
	`id_product` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
) ENGINE=' . _MYSQL_ENGINE_ . ' DEFAULT CHARSET=utf8;';
$sql[] = 'CREATE TABLE IF NOT EXISTS `' . _DB_PREFIX_ . ProductNutritionalFacts::TABLE_NAME . '_lang` (
	`id_product` INT(10) UNSIGNED NOT NULL,
	`id_lang` INT(10) UNSIGNED NOT NULL,
	`composition_unit` TEXT NULL,
	`additives_unit` TEXT NULL,
	`analysis_unit` TEXT NULL,
	`composition` TEXT NULL,
	`additives` TEXT NULL,
	`analysis` TEXT NULL,
	`additional_data` TEXT NULL,
	`quantity` TEXT NULL,
	PRIMARY KEY (`id_product`, `id_lang`)
) ENGINE=' . _MYSQL_ENGINE_ . ' DEFAULT CHARSET=utf8;';

foreach ($sql as $query) {
    if (Db::getInstance()->execute($query) == false) {
        return false;
    }
}
