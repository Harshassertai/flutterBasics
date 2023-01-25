const express = require('express');
const app = express()


app.get('/myapp', (req, res) => {
  res.status(200).json({ message: "Backend is responding" })
  // res.send([
  //   'bob',
  //   'Cat',
  //   'morris'
  // ])
})


app.listen(3000, () => {
  console.log('server is listening at : - ',3000)
})