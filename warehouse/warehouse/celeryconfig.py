broker_url = 'redis://localhost:6379/0'
result_backend = 'redis://localhost:6379/0'
accept_content = ['pickle', 'json']
result_serializer = 'pickle'
task_serializer = 'pickle'
imports = ('warehouse_parser.items',)
