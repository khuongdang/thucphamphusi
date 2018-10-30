<?php
/**
 * SEF component for Joomla!
 * 
 * @package   JoomSEF
 * @version   4.7.5
 * @author    ARTIO s.r.o., http://www.artio.net
 * @copyright Copyright (C) 2018 ARTIO s.r.o. 
 * @license   GNU/GPLv3 http://www.artio.net/license/gnu-general-public-license
 */

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die('Restricted access.');

class SefExt_com_products extends SefExt
{
    var $params;
    
    function create(&$uri) {
        $sefConfig = SEFConfig::getConfig();
        $this->params =& SEFTools::getExtParams('com_banners');
        
        $vars = $uri->getQuery(true);
        extract($vars);
        $title[] = 'san-pham';
        $lng = null;
        $category_info = Util::getCategoryInfo($vars['id_category']);
        $title[] = $category_info['title'];

        $newUri = $uri;
        if (isset($this->lang)) {
        	$lang= $this->lang;
        }
        if (count($title) > 0) $newUri = JoomSEF::_sefGetLocation($uri, $title, null, null, null, @$lang);
        
        return $newUri;
    }
}
?>