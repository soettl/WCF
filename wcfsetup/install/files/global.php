<?php
/**
 * @author	Marcel Werk
 * @copyright	2001-2013 WoltLab GmbH
 * @license	GNU Lesser General Public License <http://opensource.org/licenses/lgpl-license.php>
 * @package	com.woltlab.wcf
 * @category	Community Framework
 */
// define the wcf-root-dir
define('WCF_DIR', dirname(__FILE__).'/');

// APC below 3.1.4 breaks PHP's late static binding
if (extension_loaded('apc') && strnatcmp(phpversion('apc'), '3.1.4') < 0) {
	apc_clear_cache('opcode');
}

// initiate wcf core
require_once(WCF_DIR.'lib/system/WCF.class.php');
new wcf\system\WCF();
