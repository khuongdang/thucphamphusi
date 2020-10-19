<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Products
 * @author     kent <raccuakent@gmail.com>
 * @copyright  2018 kent
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access
defined('_JEXEC') or die;

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_products'))
{
	throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'));
}

// Include dependancies
jimport('joomla.application.component.controller');

JLoader::registerPrefix('Products', JPATH_COMPONENT_ADMINISTRATOR);
JLoader::register('ProductsHelper', JPATH_COMPONENT_ADMINISTRATOR . DIRECTORY_SEPARATOR . 'helpers' . DIRECTORY_SEPARATOR . 'products.php');

$controller = JControllerLegacy::getInstance('Products');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
