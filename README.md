# gh-pages-nginx
NGINX configuration file for GitHub Pages

**gh-pages-nginx** is a small feature-specific configuration file[^1] designed
specifically for the use-case of pointing your index to a GitHub Pages website,
so that other locations on the same domain may be configured for other servers.

## Installing
Copy _username_.com.conf to `/etc/nginx/conf.d` and rename the configuration
file to your domain.

Update the `proxy_pass` directive URL in the configuration file to your
**https://_username_.github.io** GitHub Pages URL.[^2]

Add your own `location` blocks.[^3][^4]

## License
GNU General Public License v2.0

[^1]: https://docs.nginx.com/nginx/admin-guide/basic-functionality/managing-configuration-files/#feature-specific-configuration-files
[^2]: https://pages.github.com
[^3]: https://docs.nginx.com/nginx/admin-guide/basic-functionality/managing-configuration-files/#virtual-servers
[^4]: https://nginx.org/en/docs/http/ngx_http_core_module.html#location
