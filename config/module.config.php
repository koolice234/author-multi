<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2015 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

return array(
    'router' => array(
        'routes' => array(
        	'AuthorsMulti-home' => array(
				'type'    => 'regex',
				'options' => array(
					'regex'    => '.*/AuthorsMulti/.*/id/(?<idpage>[0-9]+)',
					'defaults' => array(
						'controller' => 'AuthorsMulti\Controller\Index',
						'action'     => 'indexsite',
						),
					'spec' => '%idpage'
					)
			),
            'AuthorsMulti-homepage' => array(
                'type'    => 'Literal',
                'options' => array(
                    'route'    => '/',
                    'defaults' => array(
                        'controller'     => 'MelisFront\Controller\Index',
                        'action'         => 'index',
                        'renderType'     => 'melis_zf2_mvc',
                        'renderMode'     => 'front',
                        'preview'        => false,
                        'idpage'         => 262
                    )
                ),
            ),
            // The following is a route to simplify getting started creating
            // new controllers and actions without needing to create a new
            // module. Simply drop new controllers in, and you can access them
            // using the path /application/:controller/:action
            'applicationAuthorsMulti' => array(
                'type'    => 'Literal',
                'options' => array(
                    'route'    => '/AuthorsMulti',
                    'defaults' => array(
                        '__NAMESPACE__' => 'AuthorsMulti\Controller',
                        'controller'    => 'Index',
                        'action'        => 'indexsite',
                    ),
                ),
                'may_terminate' => true,
                'child_routes' => array(
                    'default' => array(
                        'type'    => 'Segment',
                        'options' => array(
                            'route'    => '/[:controller[/:action]]',
                            'constraints' => array(
                                'controller' => '[a-zA-Z][a-zA-Z0-9_-]*',
                                'action'     => '[a-zA-Z][a-zA-Z0-9_-]*',
                            ),
                            'defaults' => array(
                            ),
                        ),
                    ),
                ),
            ), 
        ),
    ),
    'service_manager' => array(
        'abstract_factories' => array(
            'Zend\Cache\Service\StorageCacheAbstractServiceFactory',
            'Zend\Log\LoggerAbstractServiceFactory',
        ),
        'aliases' => array(
            'translator' => 'MvcTranslator',
        ),
    ),
    'translator' => array(
    ),
    'controllers' => array(
        'invokables' => array(
            'AuthorsMulti\Controller\Base'      => 'AuthorsMulti\Controller\BaseController',
            'AuthorsMulti\Controller\Index'      => 'AuthorsMulti\Controller\IndexController',
            'AuthorsMulti\Controller\Blog'       => 'AuthorsMulti\Controller\BlogController',
            'AuthorsMulti\Controller\ContactUs'       => 'AuthorsMulti\Controller\ContactUsController',
            'AuthorsMulti\Controller\Page404'    => 'AuthorsMulti\Controller\Page404Controller',
	        'AuthorsMulti\Controller\CustomSettings'         => 'AuthorsMulti\Controller\CustomSettingsController'
        ),
    ),
    'view_manager' => array(
        'display_not_found_reason' => true,
        'display_exceptions'       => true,
        'doctype'                  => 'HTML5',
        'not_found_template'       => 'error/404',
        'exception_template'       => 'error/index',
        'controller_map' => array(
            'AuthorsMulti' => true,
        ),
        'template_map' => array(
            'AuthorsMulti/defaultLayout'  	=> __DIR__ . '/../view/layout/defaultLayout.phtml',
            'AuthorsMulti/errorLayout'        => __DIR__ . '/../view/layout/Page404.phtml',
            'customsettings/custom-settings' => __DIR__ . '/../view/authors-multi/custom-settings/custom-settings.phtml',
            // Errors layout
            'error/404'               	=> __DIR__ . '/../view/error/404.phtml',
            'error/index'             	=> __DIR__ . '/../view/error/index.phtml',

            // Plugins template
            'contanctUs'                => __DIR__ . '/../view/authors-multi/contactus/form.phtml',
            'Blogs'                => __DIR__ . '/../view/authors-multi/plugins/bloglist.phtml',
            'BlogDetails'                => __DIR__ . '/../view/authors-multi/plugins/blogdetails.phtml',
            'BlogSidebar'                => __DIR__ . '/../view/authors-multi/plugins/sidebar.phtml',
        ),
        'template_path_stack' => array(
            __DIR__ . '/../view',
        ),
    ),
);
