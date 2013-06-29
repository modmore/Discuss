<?php
/* Get the core config */
if (!file_exists(dirname(dirname(__FILE__)).'/config.core.php')) {
    die('ERROR: missing '.dirname(dirname(__FILE__)).'/config.core.php file defining the MODX core path.');
}

echo "<pre>";
/* Boot up MODX */
echo "Loading modX...\n";
require_once dirname(dirname(__FILE__)).'/config.core.php';
require_once MODX_CORE_PATH.'model/modx/modx.class.php';
$modx = new modX();
echo "Initializing manager...\n";
$modx->initialize('mgr');
$modx->getService('error','error.modError', '', '');

$componentPath = dirname(dirname(__FILE__));

$discuss = $modx->getService('discuss','Discuss', $componentPath.'/core/components/discuss/model/discuss/', array(
    'discuss.core_path' => $componentPath.'/core/components/discuss/',
));

$manager = $modx->getManager();
$manager->addIndex('disBoardClosure','PRIMARY');
$manager->addIndex('disCategory','rank');
$manager->addIndex('disSession','PRIMARY');
$manager->addIndex('disSession','place');
