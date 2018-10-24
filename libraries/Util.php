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
        $db = JFactory::getDbo();
        $query = 'SELECT * FROM #__phocagallery_categories AS pc WHERE pc.hot_cat = 1 ORDER BY RAND()';
        $db->setQuery($query);
        $results = $db->loadObjectList();
        return $results;
    }

    public static function getProductFromHotCategories($limit)
    {
        $db = JFactory::getDbo();
        $query = 'SELECT * FROM #__phocagallery AS pc WHERE pc.hot_cat = 1 ORDER BY RAND()';
        $db->setQuery($query);
        $results = $db->loadObject();
        foreach (self::getHotCategories()) {

        }
        return $results;
    }

    public static function getProductFromCategory($id_category, $limit)
    {
        if (!empty($limit)) {
            $limit =
        }
        $db = JFactory::getDbo();
        $query = "SELECT * FROM #__phocagallery AS p WHERE p.catid = $id_category ORDER BY RAND()";
        $db->setQuery($query);
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

