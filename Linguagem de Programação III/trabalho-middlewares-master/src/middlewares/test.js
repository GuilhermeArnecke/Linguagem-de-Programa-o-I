function teste(req,res,next){
 console.log(req.path)
  next()
}

module.exports = {
  teste
}