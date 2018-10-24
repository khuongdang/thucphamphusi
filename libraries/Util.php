<?php
class Util {

    const DEFAULT_LIMIT = 10;
    const MIN_LIMIT     = 1;

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
        $results = $db->loadAssocList();

        foreach($results as $index => $obj) {
            $results[$index]['product_info'] = self::getProductFromCategory($obj['id'], 1);
        }
        return $results;
    }

    public static function getProductFromHotCategories($limit)
    {
        $db = JFactory::getDbo();
        $query = 'SELECT * FROM #__phocagallery AS pc WHERE pc.hot_cat = 1 ORDER BY RAND()';
        $db->setQuery($query);
        $results = $db->loadObject();
        return $results;
    }

    /**
     * @param $id_category
     * @param $limit
     * @return mixed
     */
    public static function getProductFromCategory($id_category, $limit)
    {
        if (empty($limit)) {
            $limit = self::DEFAULT_LIMIT;
        }
        $db = JFactory::getDbo();
        $query = "SELECT * FROM #__phocagallery AS p WHERE p.catid = $id_category ORDER BY RAND() LIMIT 0, $limit";
        $db->setQuery($query);
        $results = $db->loadAssocList();
        if ($limit == self::MIN_LIMIT) {
            $results = $db->loadAssoc();
        }
        return $results;
    }


    public static function getAllProducts($limit = self::MIN_LIMIT)
    {
        if (empty($limit)) {
            $limit = self::DEFAULT_LIMIT;
        }
        $db = JFactory::getDbo();
        $query = "SELECT * FROM #__phocagallery AS p ORDER BY RAND() LIMIT 0, $limit";
        $db->setQuery($query);
        $results = $db->loadAssocList();
        if ($limit == self::MIN_LIMIT) {
            $results = $db->loadAssoc();
        }
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

