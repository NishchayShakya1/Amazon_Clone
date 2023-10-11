//Import from Packages
const express  = require('express');
const mongoose = require('mongoose');

// Import from Other FIles
const authRouter = require('./routes/auth');
const adminRouter = require('./routes/admin');
const productRouter = require('./routes/product');
const userRouter = require('./routes/user');

//INIT
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://amazon:Nishchay321@amazon.ndhknkv.mongodb.net/?retryWrites=true&w=majority"

// middleware
// Client -> middleware -> Server -> Client
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter); 


// Generating an API
// GET, PUT, POST, DELETE, UPDATE -> CRUD
// Connections
mongoose.connect(DB).then(()=>{
    console.log('Connection Successful')
}).catch((e)=>{
    console.log(e);
})

app.listen(PORT, "0.0.0.0", () =>
   console.log(`Connected at Port ${PORT}`)
);