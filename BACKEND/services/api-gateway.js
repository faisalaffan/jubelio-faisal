exports.register = function (server, option, next) {
  var route = server.routePrefix("/api/v1");

  route([
    {
      method: "GET",
      path: "/users/{id}",
      handler: function (request, reply) {},
    },
    {
      method: "POST",
      path: "/users",
      handler: function (request, reply) {
        reply("created user");
      },
    },
  ]);

  next();
};

exports.register.attributes = {
  name: "api.user",
  version: "1.0.0",
};
