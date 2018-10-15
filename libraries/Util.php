<?php
class Util {

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

