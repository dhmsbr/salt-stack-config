base:
  '*'
    - apt.unattended
    - apt_sources

    - nginx
    - ssh
    - misc



    current_dir = os.path.dirname(os.path.realpath(__file__))
config_dir = current_dir + '/config'
home_dir = os.path.dirname(current_dir)
csd_client_dir = home_dir + '/csd_client'
hwc_dir = home_dir + '/hwc'

#format as (<file relative to config_dir>, <link location>)
links = [
	('/sshd_config', '/etc/ssh/sshd_config'),

	('/nginx/nginx.conf',    '/etc/nginx/nginx.conf'),
	('/nginx/sites-enabled', '/etc/nginx/sites-enabled'),

	('/gunicorn.d', '/etc/gunicorn.d'),

	('/init.d/gunicorn', '/etc/init.d/gunicorn'),
	('/init.d/nginx',    '/etc/init.d/nginx'),

	('/git/config',       hwc_dir + '/.git/config'),
	('/git/post-receive', hwc_dir + '/.git/hooks/post-receive'),
	('/git/config',       current_dir + '/.git/config'),
	('/git/post-receive', current_dir + '/.git/hooks/post-receive'),
	('/git/config',       csd_client_dir + '/.git/config'),
	('/git/post-receive', csd_client_dir + '/.git/hooks/post-receive'),
]