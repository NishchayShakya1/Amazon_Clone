const mongoose = require('mongoose');

const userSchema = mongoose.Schema({
    name: {
        required : true,
        type : String,
        trim : true,
    },
    email: {
        required : true,
        type : String,
        trim : true,
        validate : {
            validator : (value) => {
                const re = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
                return value.match(re);
            },
            message: 'Please Enter a Valid Email Address',
        },

    },
    password: {
        require: true,
        type: String,
        // validate : {
        //     validator : (value) => {
        //         return value.length > 6;
        //     },
        //     message: 'Please Enter a long Password',
        // },
    },
    address : {
        type : String,
        default: '',
    },
    type: {
        type: String,
        default: 'user',
    },

    // cart 
});

const User = mongoose.model("User", userSchema);
module.exports = User;