# @maybetodo find a way to generate this file automatically
# based on dependancy decoration we could put in the coffeescript's header
require
    shim:
        'libs/angular-resource'  : deps: ['libs/angular']
        'app'                    : deps: ['libs/angular', 'libs/angular-resource', 'libs/ng-grid' ,'libs/ng-bootstrap']
        'libs/ng-grid'           : deps: ['libs/angular']
        'libs/ng-bootstrap'      : deps: ['libs/angular']
        'libs/angular'           : deps: ['libs/jquery.min']
        'bootstrap'              : deps: ['app']
        'run'                    : deps: ['app']
    [
        'require'
        'run'
    ], (require) ->
        require ['bootstrap']
