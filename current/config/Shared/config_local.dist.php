<?php

use Monolog\Logger;
use Spryker\Shared\Application\ApplicationConstants;
use Spryker\Shared\Kernel\KernelConstants;
use Spryker\Shared\Log\LogConstants;
use Spryker\Shared\Propel\PropelConstants;
use Spryker\Shared\Twig\TwigConstants;
use Spryker\Shared\ZedNavigation\ZedNavigationConstants;

// ---------- Yves host
$config[ApplicationConstants::YVES_TRUSTED_HOSTS] = [];

// ---------- Zed host
$config[ApplicationConstants::PORT_ZED] = ':8080';

/** Database credentials */
$config[LogConstants::LOG_LEVEL] = Logger::ERROR;

/** Optimizing **/
/** Deactivate All Debug Functions And the Symfony Toolbar **/
$config[ApplicationConstants::ENABLE_APPLICATION_DEBUG] = false;
$config[ApplicationConstants::ENABLE_WEB_PROFILER] = false;
$config[PropelConstants::PROPEL_DEBUG] = false;

// ---------- Twig
$config[TwigConstants::ZED_TWIG_OPTIONS] = [
    'cache' => false,
];
$config[TwigConstants::YVES_TWIG_OPTIONS] = [
    'cache' => false,
];

/** Activate Zed Navigation Cache (Default On) **/
$config[ZedNavigationConstants::ZED_NAVIGATION_CACHE_ENABLED] = true;

/** Activate Class Resolver Cache **/
$config[KernelConstants::AUTO_LOADER_UNRESOLVABLE_CACHE_ENABLED] = true;
