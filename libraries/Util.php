<?php
class Util {
    
    /**
     * @param $filename
     * @param int $rel
     * @return mixed|string
     */
    public static function getFileOriginal($filename, $rel = 0) {
        if (!class_exists('PhocaGalleryLoader')) {
            require_once(JPATH_ADMINISTRATOR . '/components/com_phocagallery/libraries/loader.php');
        }
        phocagalleryimport('phocagallery.image.image');
        phocagalleryimport('phocagallery.path.path');
        $path	= PhocaGalleryPath::getPath();
        $filename = str_replace(" ", '%20', $filename);
        if ($rel == 1) {
            return str_replace('//', '/', $path->image_rel . $filename);
        } else {
            return JPath::clean($path->image_abs . $filename);
        }
    }
    
    /**
     * @param $ids
     * @return mixed
     */
    public static function getHotCategories($ids = null)
    {
        $where = '';
        if (!empty($ids)) {
            $where = ' WHERE catid IN ($ids)';
        }
        $db = JFactory::getDbo();
        $query = 'SELECT p.* FROM #__phocagallery_categories AS pc ' .
                 'INNER JOIN #__phocagallery AS p ON pc.id = p.`catid` ' . $where . ' ORDER BY RAND() LIMIT 0,3';
        $db->setQuery($query);
        $results = $db->loadObjectList();
        return $results;
    }
    

    /**
     * @return array|\Joomla\CMS\Menu\MenuItem[]
     * @throws Exception
     */
    public static function getAllMenuItems()
    {
        // Get default menu - JMenu object, look at JMenu api docs
        $menu = JFactory::getApplication()->getMenu();

        // Get menu items - array with menu items
        $items = $menu->getMenu();

        return $items;
    }

    /**
     * @return mixed
     * @since version
     */
    public static function getAllProducts()
    {
        $db = JFactory::getDbo();
        $query = 'SELECT * from #__phocagallery order by `date` LIMIT 0,10';
        $db->setQuery($query);
        $results = $db->loadObjectList();
        return $results;
    }

    /**
     * @param $data
     * @since version
     */
    public static function dd($data){
        highlight_string("<?php\n " . var_export($data, true) . "?>");
        echo '<script>document.getElementsByTagName("code")[0].getElementsByTagName("span")[1].remove() ;document.getElementsByTagName("code")[0].getElementsByTagName("span")[document.getElementsByTagName("code")[0].getElementsByTagName("span").length - 1].remove() ; </script>';
        die();
    }

    /**
     * @param $var
     * @param bool $exit
     * @since version
     */
    function debugVar($var, $exit = false) {
        echo '<pre style="font-size:11px;">';

        if (is_array($var) || is_object($var)) {
            echo htmlentities(print_r($var, true));
        } elseif (is_string($var)) {
            echo "string(" . strlen($var) . ") \"" . htmlentities($var) . "\"\n";
        } else {
            var_dump($var);
        }

        echo "\n</pre>";

        if ($exit) {
            exit;
        }
    }
}

