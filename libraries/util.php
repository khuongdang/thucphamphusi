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
        return $title_explode[0] . '<div style="margin-top:5px;">Mã SP:<br> <span class="product_code">' . $product_code . '&#xFE0E;</span></div>';
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


    public static function stringURLSafe($string)
    {
        $trans = array(
            "đ"=>"d","ă"=>"a","â"=>"a","á"=>"a","à"=>"a",

            "ả"=>"a","ã"=>"a","ạ"=>"a",

            "ấ"=>"a","ầ"=>"a","ẩ"=>"a","ẫ"=>"a","ậ"=>"a",

            "ắ"=>"a","ằ"=>"a","ẳ"=>"a","ẵ"=>"a","ặ"=>"a",

            "é"=>"e","è"=>"e","ẻ"=>"e","ẽ"=>"e","ẹ"=>"e",

            "ế"=>"e","ề"=>"e","ể"=>"e","ễ"=>"e","ệ"=>"e",

            "í"=>"i","ì"=>"i","ỉ"=>"i","ĩ"=>"i","ị"=>"i",

            "ư"=>"u","ô"=>"o","ơ"=>"o","ê"=>"e",

            "Ư"=>"u","Ô"=>"o","Ơ"=>"o","Ê"=>"e",

            "ú"=>"u","ù"=>"u","ủ"=>"u","ũ"=>"u","ụ"=>"u",

            "ứ"=>"u","ừ"=>"u","ử"=>"u","ữ"=>"u","ự"=>"u",

            "ó"=>"o","ò"=>"o","ỏ"=>"o","õ"=>"o","ọ"=>"o",

            "ớ"=>"o","ờ"=>"o","ở"=>"o","ỡ"=>"o","ợ"=>"o",

            "ố"=>"o","ồ"=>"o","ổ"=>"o","ỗ"=>"o","ộ"=>"o",

            "ú"=>"u","ù"=>"u","ủ"=>"u","ũ"=>"u","ụ"=>"u",

            "ứ"=>"u","ừ"=>"u","ử"=>"u","ữ"=>"u","ự"=>"u",

            "ý"=>"y","ỳ"=>"y","ỷ"=>"y","ỹ"=>"y","ỵ"=>"y",

            "Ý"=>"Y","Ỳ"=>"Y","Ỷ"=>"Y","Ỹ"=>"Y","Ỵ"=>"Y",

            "Đ"=>"D","Ă"=>"A","Â"=>"A","Á"=>"A","À"=>"A",

            "Ả"=>"A","Ã"=>"A","Ạ"=>"A",

            "Ấ"=>"A","Ầ"=>"A","Ẩ"=>"A","Ẫ"=>"A","Ậ"=>"A",

            "Ắ"=>"A","Ằ"=>"A","Ẳ"=>"A","Ẵ"=>"A","Ặ"=>"A",

            "É"=>"E","È"=>"E","Ẻ"=>"E","Ẽ"=>"E","Ẹ"=>"E",

            "Ế"=>"E","Ề"=>"E","Ể"=>"E","Ễ"=>"E","Ệ"=>"E",

            "Í"=>"I","Ì"=>"I","Ỉ"=>"I","Ĩ"=>"I","Ị"=>"I",

            "Ư"=>"U","Ô"=>"O","Ơ"=>"O","Ê"=>"E",

            "Ư"=>"U","Ô"=>"O","Ơ"=>"O","Ê"=>"E",

            "Ú"=>"U","Ù"=>"U","Ủ"=>"U","Ũ"=>"U","Ụ"=>"U",

            "Ứ"=>"U","Ừ"=>"U","Ử"=>"U","Ữ"=>"U","Ự"=>"U",

            "Ó"=>"O","Ò"=>"O","Ỏ"=>"O","Õ"=>"O","Ọ"=>"O",

            "Ớ"=>"O","Ờ"=>"O","Ở"=>"O","Ỡ"=>"O","Ợ"=>"O",

            "Ố"=>"O","Ồ"=>"O","Ổ"=>"O","Ỗ"=>"O","Ộ"=>"O",

            "Ú"=>"U","Ù"=>"U","Ủ"=>"U","Ũ"=>"U","Ụ"=>"U",

            "Ứ"=>"U","Ừ"=>"U","Ử"=>"U","Ữ"=>"U","Ự"=>"U",);

        $str = str_replace('-', ' ', $string);

        $str = strtr($str, $trans);
        $lang = JFactory::getLanguage();
        $str = $lang->transliterate($str);
        $str = preg_replace(array('/\s+/','/[^A-Za-z0-9\-]/'), array('-',''), $str);
        $str = trim(strtolower($str));
        return $str;
    }
}

