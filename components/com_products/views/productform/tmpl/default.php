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

JHtml::_('behavior.keepalive');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');

// Load admin language file
$lang = JFactory::getLanguage();
$lang->load('com_products', JPATH_SITE);
$doc = JFactory::getDocument();
$doc->addScript(JUri::base() . '/media/com_products/js/form.js');

$user    = JFactory::getUser();
$canEdit = ProductsHelpersProducts::canUserEdit($this->item, $user);


?>

<div class="product-edit front-end-edit">
	<?php if (!$canEdit) : ?>
		<h3>
			<?php throw new Exception(JText::_('COM_PRODUCTS_ERROR_MESSAGE_NOT_AUTHORISED'), 403); ?>
		</h3>
	<?php else : ?>
		<?php if (!empty($this->item->id)): ?>
			<h1><?php echo JText::sprintf('COM_PRODUCTS_EDIT_ITEM_TITLE', $this->item->id); ?></h1>
		<?php else: ?>
			<h1><?php echo JText::_('COM_PRODUCTS_ADD_ITEM_TITLE'); ?></h1>
		<?php endif; ?>

		<form id="form-product"
			  action="<?php echo JRoute::_('index.php?option=com_products&task=product.save'); ?>"
			  method="post" class="form-validate form-horizontal" enctype="multipart/form-data">
			
			<div class="control-group">
				<div class="controls">

					<?php if ($this->canSave): ?>
						<button type="submit" class="validate btn btn-primary">
							<?php echo JText::_('JSUBMIT'); ?>
						</button>
					<?php endif; ?>
					<a class="btn"
					   href="<?php echo JRoute::_('index.php?option=com_products&task=productform.cancel'); ?>"
					   title="<?php echo JText::_('JCANCEL'); ?>">
						<?php echo JText::_('JCANCEL'); ?>
					</a>
				</div>
			</div>

			<input type="hidden" name="option" value="com_products"/>
			<input type="hidden" name="task"
				   value="productform.save"/>
			<?php echo JHtml::_('form.token'); ?>
		</form>
	<?php endif; ?>
</div>
