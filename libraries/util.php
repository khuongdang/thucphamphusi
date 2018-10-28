<?php
class Util {

    const DEFAULT_LIMIT = 10;
    const MIN_LIMIT     = 1;

    /**
     * @param $filename
     * @param int $rel
     * @return mixed|string
     */
    public static function getFileOriginal($filename, $rel = 0)
    {
        if (!class_exists('PhocaGalleryLoader')) {
            require_once(JPATH_ADMINISTRATOR . '/components/com_phocagallery/libraries/loader.php');
            require_once(JPATH_ADMINISTRATOR . '/components/com_phocagallery/libraries/phocagallery/file/filethumbnail.php');

        }
        phocagalleryimport('phocagallery.image.image');
        phocagalleryimport('phocagallery.path.path');
        phocagalleryimport('phocagallery.file.file');
        $thumb = PhocaGalleryFileThumbnail::getThumbnailName($filename, 'large');
        if ($rel == 1) {
            $filename = str_replace(" ", '%20', $thumb->rel);
            return $filename;
        } else {
            return $thumb->abs;
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
            $results[$index]['product_info'] = self::getProductsFromCategory($obj['id'], 1);
        }
        return $results;
    }

    /**
     * @param $limit
     * @return mixed
     */
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
    public static function getProductsFromCategory($id_category, $limit)
    {
        if (empty($limit)) {
            $limit = self::DEFAULT_LIMIT;
        }
        if (empty($id_category)) {
            return null;
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

    /**
     * @param int $limit
     * @return mixed
     */
    public static function getAllProducts($limit = self::MIN_LIMIT, $id_category = null)
    {
        $show_category = "";
        if (empty($limit)) {
            $limit = self::DEFAULT_LIMIT;
        }
        if (!empty($id_category)) {
            $show_category = "WHERE c.id = $id_category";
        }
        $db = JFactory::getDbo();
        $query = " SELECT *, p.title AS product_title, c.title AS cat_title ";
        $query.= "FROM #__phocagallery AS p INNER JOIN  #__phocagallery_categories AS c ON c.id = p.`catid`";
        $query.= " " . $show_category . " ORDER BY RAND() LIMIT 0, $limit";

        $db->setQuery($query);
        $results = $db->loadAssocList();
        if ($limit == self::MIN_LIMIT) {
            $results = $db->loadAssoc();
        }
        return $results;
    }

    /**
     * @param $id_product
     * @return mixed|null
     */
    public static function getProductInfo($id_product)
    {
        if (empty($id_product)) {
            return null;
        }
        $db = JFactory::getDbo();
        $query = "SELECT * FROM #__phocagallery AS p WHERE p.id = $id_product LIMIT 0,1";
        $db->setQuery($query);
        $results = $db->loadAssoc();
        return $results;
    }

    /**
     * @param $id_category
     * @return mixed|null
     */
    public static function getCategoryInfo($id_category)
    {
        if (empty($id_category)) {
            return null;
        }
        $db = JFactory::getDbo();
        $query = "SELECT * FROM #__phocagallery_categories AS c WHERE c.id = $id_category LIMIT 0,1";
        $db->setQuery($query);
        $result = $db->loadAssoc();
        return $result;
    }

    public static function formatProductTitle($title)
    {
        $title_explode = explode('-', $title);
        $product_code = trim($title_explode[1]);
        return $title_explode[0] . '<div style="padding-top:2px";>Mã SP: <span style="color:red; font-weight:bold;">' . $product_code . '</span></div>';
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

