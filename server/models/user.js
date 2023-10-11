const mongoose = require('mongoose');
const { productSchema } = require('./product');

const userSchema = mongoose.Schema({
    name:{
        require : true,
        type: String,
        trim: true,
    },
    email :{
        require :true,
        type: String,
        trim: true,
        validate:{
            validator: (value)=>{
                const re =
  /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
             return value.match(re);
            },
            message: 'Please enter a Valid Email Address',
        }
    },

    password: {
        require:true,
        type:String,
       
    },

    address:{
        type: String,
        default:''
    },

    type:{
        type:String,
        default:'user',
    },
    //cart
    cart:[
        {
            product : productSchema,
            quantity: {
                type: Number,
                required: true
            }
        }
    ]
});

const User = mongoose.model('User', userSchema);
module.exports = User;