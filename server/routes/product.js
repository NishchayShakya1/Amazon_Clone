const express = require("express");
const productRouter = express.Router();
const auth = require('../middleware/auth');
const { Product }= require('../models/product');

productRouter.get("/api/products/", auth , async (req, res) => {
    try {
      console.log(req.query.category);
      const products = await Product.find({category: req.query.category});  
      res.json(products); 
    } catch (e) {
      res.status(500).json({
        error: e.message,
      });
    }
  });


// Searching Products
// /api/products/search/i
productRouter.get("/api/products/search/:name", auth , async (req, res) => {
  try {
    console.log(req.params.category);
    const products = await Product.find({
      name : {$regex: req.params.name, $options: 'i'}
    });  
    // iphone
    // i
    res.json(products); 
  } catch (e) {
    res.status(500).json({
      error: e.message,
    });
  }
});


module.exports = productRouter;