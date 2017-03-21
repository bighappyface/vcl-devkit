sub vcl_recv {
  unset req.http.Cookie;
}

sub vcl_backend_response {
  set beresp.ttl = 1m;
}

sub vcl_deliver {
  if (obj.hits > 0) {
    set resp.http.X-Cache = "HIT";
  } else {
    set resp.http.X-Cache = "MISS";
  }
}

sub vcl_backend_error {
  set beresp.http.Content-Type = "text/html; charset=utf-8";
  synthetic( {"
  <!DOCTYPE html>
  <html>
  <head>
    <meta charset="UTF-8">
    <title>VCL Dev Kit</title>
  </head>
  <body>
    <h1>VCL Dev Kit</h1>
    <p>Hello World!</p>
  </body>
  </html>"} );
  return (deliver);
}
