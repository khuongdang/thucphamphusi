<?php
/**
 * Part of the Joomla Framework Filter Package
 *
 * @copyright  Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE
 */

namespace Joomla\Filter;

use Joomla\Language\Language;
use Joomla\String\StringHelper;

/**
 * OutputFilter
 *
 * @since  1.0
 */
class OutputFilter
{
    /**
     * Makes an object safe to display in forms
     *
     * Object parameters that are non-string, array, object or start with underscore
     * will be converted
     *
     * @param   object $mixed An object to be parsed
     * @param   integer $quoteStyle The optional quote style for the htmlspecialchars function
     * @param   mixed $excludeKeys An optional string single field name or array of field names not to be parsed (eg, for a textarea)
     *
     * @return  void
     *
     * @since   1.0
     */
    public static function objectHtmlSafe(&$mixed, $quoteStyle = ENT_QUOTES, $excludeKeys = '')
    {
        if (is_object($mixed)) {
            foreach (get_object_vars($mixed) as $k => $v) {
                if (is_array($v) || is_object($v) || $v == null || substr($k, 1, 1) == '_') {
                    continue;
                }

                if (is_string($excludeKeys) && $k == $excludeKeys) {
                    continue;
                } elseif (is_array($excludeKeys) && in_array($k, $excludeKeys)) {
                    continue;
                }

                $mixed->$k = htmlspecialchars($v, $quoteStyle, 'UTF-8');
            }
        }
    }

    /**
     * This method processes a string and replaces all instances of & with &amp; in links only.
     *
     * @param   string $input String to process
     *
     * @return  string  Processed string
     *
     * @since   1.0
     */
    public static function linkXhtmlSafe($input)
    {
        $regex = 'href="([^"]*(&(amp;){0})[^"]*)*?"';

        return preg_replace_callback(
            "#$regex#i",
            function ($m) {
                return preg_replace('#&(?!amp;)#', '&amp;', $m[0]);
            },
            $input
        );
    }

    /**
     * This method processes a string and replaces all accented UTF-8 characters by unaccented
     * ASCII-7 "equivalents", whitespaces are replaced by hyphens and the string is lowercase.
     *
     * @param   string $string String to process
     * @param   string $language Language to transliterate to
     *
     * @return  string  Processed string
     *
     * @since   1.0
     */
    public static function stringUrlSafe($string, $language = '')
    {
        $trans = array(

            "đ" => "d", "ă" => "a", "â" => "a", "á" => "a", "à" => "a",

            "ả" => "a", "ã" => "a", "ạ" => "a",

            "ấ" => "a", "ầ" => "a", "ẩ" => "a", "ẫ" => "a", "ậ" => "a",

            "ắ" => "a", "ằ" => "a", "ẳ" => "a", "ẵ" => "a", "ặ" => "a",

            "é" => "e", "è" => "e", "ẻ" => "e", "ẽ" => "e", "ẹ" => "e",

            "ế" => "e", "ề" => "e", "ể" => "e", "ễ" => "e", "ệ" => "e",

            "í" => "i", "ì" => "i", "ỉ" => "i", "ĩ" => "i", "ị" => "i",

            "ư" => "u", "ô" => "o", "ơ" => "o", "ê" => "e",

            "Ư" => "u", "Ô" => "o", "Ơ" => "o", "Ê" => "e",

            "ú" => "u", "ù" => "u", "ủ" => "u", "ũ" => "u", "ụ" => "u",

            "ứ" => "u", "ừ" => "u", "ử" => "u", "ữ" => "u", "ự" => "u",

            "ó" => "o", "ò" => "o", "ỏ" => "o", "õ" => "o", "ọ" => "o",

            "ớ" => "o", "ờ" => "o", "ở" => "o", "ỡ" => "o", "ợ" => "o",

            "ố" => "o", "ồ" => "o", "ổ" => "o", "ỗ" => "o", "ộ" => "o",

            "ú" => "u", "ù" => "u", "ủ" => "u", "ũ" => "u", "ụ" => "u",

            "ứ" => "u", "ừ" => "u", "ử" => "u", "ữ" => "u", "ự" => "u",

            "ý" => "y", "ỳ" => "y", "ỷ" => "y", "ỹ" => "y", "ỵ" => "y",

            "Ý" => "Y", "Ỳ" => "Y", "Ỷ" => "Y", "Ỹ" => "Y", "Ỵ" => "Y",

            "Đ" => "D", "Ă" => "A", "Â" => "A", "Á" => "A", "À" => "A",

            "Ả" => "A", "Ã" => "A", "Ạ" => "A",

            "Ấ" => "A", "Ầ" => "A", "Ẩ" => "A", "Ẫ" => "A", "Ậ" => "A",

            "Ắ" => "A", "Ằ" => "A", "Ẳ" => "A", "Ẵ" => "A", "Ặ" => "A",

            "É" => "E", "È" => "E", "Ẻ" => "E", "Ẽ" => "E", "Ẹ" => "E",

            "Ế" => "E", "Ề" => "E", "Ể" => "E", "Ễ" => "E", "Ệ" => "E",

            "Í" => "I", "Ì" => "I", "Ỉ" => "I", "Ĩ" => "I", "Ị" => "I",

            "Ư" => "U", "Ô" => "O", "Ơ" => "O", "Ê" => "E",

            "Ư" => "U", "Ô" => "O", "Ơ" => "O", "Ê" => "E",

            "Ú" => "U", "Ù" => "U", "Ủ" => "U", "Ũ" => "U", "Ụ" => "U",

            "Ứ" => "U", "Ừ" => "U", "Ử" => "U", "Ữ" => "U", "Ự" => "U",

            "Ó" => "O", "Ò" => "O", "Ỏ" => "O", "Õ" => "O", "Ọ" => "O",

            "Ớ" => "O", "Ờ" => "O", "Ở" => "O", "Ỡ" => "O", "Ợ" => "O",

            "Ố" => "O", "Ồ" => "O", "Ổ" => "O", "Ỗ" => "O", "Ộ" => "O",

            "Ú" => "U", "Ù" => "U", "Ủ" => "U", "Ũ" => "U", "Ụ" => "U",

            "Ứ" => "U", "Ừ" => "U", "Ử" => "U", "Ữ" => "U", "Ự" => "U",);

    //remove any '-' from the string they will be used as concatonater
        $str = str_replace('-', ' ', $string);
        $str = strtr($str, $trans);
        $lang =& JFactory::getLanguage();
        $str = $lang->transliterate($str);

    // remove any duplicate whitespace, and ensure all characters are alphanumeric
        $str = preg_replace(array('/\s+/', '/[^A-Za-z0-9\-]/'), array('-', ''), $str);

    // lowercase and trim
        $str = trim(strtolower($str));
        return $str;
    }

    /**
     * This method implements unicode slugs instead of transliteration.
     *
     * @param   string $string String to process
     *
     * @return  string  Processed string
     *
     * @since   1.0
     */
    public static function stringUrlUnicodeSlug($string)
    {
        // Replace double byte whitespaces by single byte (East Asian languages)
        $str = preg_replace('/\xE3\x80\x80/', ' ', $string);

        // Remove any '-' from the string as they will be used as concatenator.
        // Would be great to let the spaces in but only Firefox is friendly with this

        $str = str_replace('-', ' ', $str);

        // Replace forbidden characters by whitespaces
        $str = preg_replace('#[:\#\*"@+=;!><&\.%()\]\/\'\\\\|\[]#', "\x20", $str);

        // Delete all '?'
        $str = str_replace('?', '', $str);

        // Trim white spaces at beginning and end of alias and make lowercase
        $str = trim(StringHelper::strtolower($str));

        // Remove any duplicate whitespace and replace whitespaces by hyphens
        $str = preg_replace('#\x20+#', '-', $str);

        return $str;
    }

    /**
     * Replaces &amp; with & for XHTML compliance
     *
     * @param   string $text Text to process
     *
     * @return  string  Processed string.
     *
     * @since   1.0
     */
    public static function ampReplace($text)
    {
        return preg_replace('/(?<!&)&(?!&|#|[\w]+;)/', '&amp;', $text);
    }

    /**
     * Cleans text of all formatting and scripting code
     *
     * @param   string $text Text to clean
     *
     * @return  string  Cleaned text.
     *
     * @since   1.0
     */
    public static function cleanText(&$text)
    {
        $text = preg_replace("'<script[^>]*>.*?</script>'si", '', $text);
        $text = preg_replace('/<a\s+.*?href="([^"]+)"[^>]*>([^<]+)<\/a>/is', '\2 (\1)', $text);
        $text = preg_replace('/<!--.+?-->/', '', $text);
        $text = preg_replace('/{.+?}/', '', $text);
        $text = preg_replace('/&nbsp;/', ' ', $text);
        $text = preg_replace('/&amp;/', ' ', $text);
        $text = preg_replace('/&quot;/', ' ', $text);
        $text = strip_tags($text);
        $text = htmlspecialchars($text, ENT_COMPAT, 'UTF-8');

        return $text;
    }

    /**
     * Strip img-tags from string
     *
     * @param   string $string Sting to be cleaned.
     *
     * @return  string  Cleaned string
     *
     * @since   1.0
     */
    public static function stripImages($string)
    {
        return preg_replace('#(<[/]?img.*>)#U', '', $string);
    }

    /**
     * Strip iframe-tags from string
     *
     * @param   string $string Sting to be cleaned.
     *
     * @return  string  Cleaned string
     *
     * @since   1.0
     */
    public static function stripIframes($string)
    {
        return preg_replace('#(<[/]?iframe.*>)#U', '', $string);
    }
}
