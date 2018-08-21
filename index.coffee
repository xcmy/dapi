Koa = require('koa')
Router =require('koa-router')





app = new Koa()



router = new Router()
router.prefix '/api'
app.use router.routes()

router.get '/home',(ctx)->
  ctx.body = 'hello world'




Sequelize = require('sequelize')
sequelize = new Sequelize('postgres://:@localhost:5432/wxcomment',{logging:false})

sequelize.authenticate()
  .then ()->
    console.log('db connected success')
  .catch (err)->
    console.log('db connected fail =>'+err)




app.listen 3003,(err)->
  console.log(err or 'start success')
