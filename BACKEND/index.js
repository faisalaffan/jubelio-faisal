"use strict";
const Hapi = require("@hapi/hapi");
var prefixer = require("hapi-routes-prefixer");
const Joi = require("joi");
var Sequelize = require("sequelize");
const axios = require("axios");
let xmlParser = require("xml2json");
var model = require("./models/index"); // loads index.js
var DataTypes = require("sequelize/lib/data-types");

const init = async () => {
  var sequelize = new Sequelize("jubelio-faisal", "root", "root", {
    host: "localhost",
    dialect: "postgres",
    pool: {
      max: 5,
      min: 0,
      idle: 10000,
    },
  });

  const Product = sequelize.define(
    "product",
    {
      id_product: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        field: "id_product",
      },
      name: {
        type: Sequelize.STRING,
        field: "name",
      },
      sku: {
        type: Sequelize.STRING,
        field: "sku",
      },
      product_no: {
        type: Sequelize.STRING,
        field: "product_no",
      },
      desc: {
        type: Sequelize.TEXT,
        field: "desc",
      },
    },
    {
      freezeTableName: true, // Model tableName will be the same as the model name
      timestamps: false,
      tableName: "product",
    }
  );

  const server = Hapi.server({
    port: 3000,
    host: "localhost",
  });

  let prefix = "/api/v1";
  server.route({
    method: "GET",
    path: prefix + "/syncproduct",
    options: {
      handler: async (req, h) => {
        let data;
        await axios
          .get("http://api.elevenia.co.id/rest/prodservices/product/listing", {
            headers: {
              "Content-Type": "application/json",
              openapikey: "721407f393e84a28593374cc2b347a98",
            },
          })
          .then((res) => {
            data = res.data;
          });
        data = JSON.parse(xmlParser.toJson(data)).Products.product;
        data = await Promise.all(
          data.map(async (item) => {
            item.sku = item.sellerPrdCd;
            item.name = item.prdNm;
            item.product_no = item.prdNo;
            let desc = await axios.get(
              `http://api.elevenia.co.id/rest/prodservices/product/details/${item.prdNo}`,
              {
                headers: {
                  "Content-Type": "application/json",
                  openapikey: "721407f393e84a28593374cc2b347a98",
                },
              }
            );
            item.desc = JSON.parse(
              xmlParser.toJson(desc.data)
            ).Product.htmlDetail;
            return item;
          })
        );
        let computedData = [];
        data.map((item) => {
          computedData.push({
            name: item.name,
            sku: item.sku,
            product_no: item.product_no,
            desc: item.desc,
          });
        });
        await Product.bulkCreate(computedData);
        let res = {
          code: 200,
          success: true,
          message: "Success Sync product",
          data: computedData,
          error: [],
        };
        return h.response(res).code(res.code);
      },
    },
  });

  server.route({
    method: "GET",
    path: prefix + "/product",
    options: {
      handler: async (req, h) => {
        let data;
        data = await Product.findAll();
        let res = {
          code: 200,
          success: true,
          message: "Success get product",
          data: data,
          error: [],
        };
        return h.response(res).code(res.code);
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
          id: Joi.number().min(3).max(10).label("Id Harus Number"),
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
