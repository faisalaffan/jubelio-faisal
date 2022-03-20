"use strict";
const Hapi = require("@hapi/hapi");
var prefixer = require("hapi-routes-prefixer");
const Joi = require('joi');

const init = async () => {
  const server = Hapi.server({
    port: 3000,
    host: "localhost",
  });

  let prefix = "/api/v1";
  //
  server.route({
    method: "GET",
    path: prefix + "/product",
    options: {
      handler: (req, h) => {
        let res = [
          {
            nama: "faisal",
          },
        ];
        return h.response(res);
      },
    },
  });

  server.route({
    method: "POST",
    path: prefix + "/product",
    options: {
      handler: (req, h) => {
        let res = [
          {
            nama: "faisal",
          },
        ];
        return h.response(res);
      },
    },
  });

  server.route({
    method: "DELETE",
    path: prefix + "/product",
    options: {
      handler: (req, h) => {
        let res = [
          {
            nama: "faisal",
          },
        ];
        return h.response(res);
      },
    },
  });

  server.route({
    method: "PUT",
    path: prefix + "/product/{id}",
    options: {
      validate: {
        params: Joi.object({
          id: Joi.number().min(3).max(10).label('Id Harus Number'),
        }),
      },
      handler: (req, h) => {
        let data = req.params.id;
        console.log(data);
        let res = [
          {
            nama: "faisal",
          },
        ];
        return h.response(res);
      },
    },
  });

  await server.start();
  console.log("Server running on %s", server.info.uri);
};

process.on("unhandledRejection", (err) => {
  console.log(err);
  process.exit(1);
});

init();
