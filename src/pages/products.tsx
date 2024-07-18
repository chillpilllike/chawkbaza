
import React, { useEffect, useState } from 'react'
import medusaClient from '../utils/medusa-client'

const Products = () => {
  const [products, setProducts] = useState([])

  useEffect(() => {
    medusaClient.products.list()
      .then(({ products }) => setProducts(products))
      .catch(error => console.error(error))
  }, [])

  return (
    <div>
      {products.map(product => (
        <div key={product.id}>{product.title}</div>
      ))}
    </div>
  )
}

export default Products
