exports.register = function (server, options, next) {
  server.route({
    method: "GET",
    path: "/",
    handler: (request, h) => {
      return "Hello World!";
    },
  });
  server.route({
    method: "GET",
    path: "/hello",
    handler: function (request, reply) {
      reply("World");
    },
  });

  next();
};

exports.register.attributes = {
  name: "api",
  version: "0.0.0",
};
