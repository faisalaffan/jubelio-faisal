// var Sequelize = require("sequelize");
// const sequelize = require("./index.js").sequelize;

// var Product = sequelize.define(
//   "product",
//   {
//     name: {
//       type: Sequelize.STRING,
//       field: "name",
//     },
//     sku: {
//       type: Sequelize.STRING,
//       field: "sku",
//     },
//     product_no: {
//       type: Sequelize.STRING,
//       field: "product_no",
//     },
//     desc: {
//       type: Sequelize.TEXT,
//       field: "desc",
//     },
//   },
//   {
//     freezeTableName: true, // Model tableName will be the same as the model name
//     timestamps: false,
//   }
// );

// module.exports = {
//   Product,
// };

"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  const product = sequelize.define(
    "product",
    {
      name: DataTypes.STRING,
      sku: DataTypes.TEXT,
      product_no: DataTypes.STRING,
      desc: DataTypes.BOOLEAN,
    },
    {
      timestamps: false,
      tableName: "product",
    }
  );
  product.associate = function (models) {
    // associations can be defined here
  };
  return product;
};
