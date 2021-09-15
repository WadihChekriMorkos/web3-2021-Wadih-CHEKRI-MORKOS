<?php
include "../header/header.php";
?>
<head>
    <link rel="stylesheet" href="viewProductsStyle.css">
</head>
<h1>Covid 19 Category</h1>
<div class="products_container">
    <div class="left-container">
        <div class="subcategorie">
            <h3>Subcategories</h3>
            <ul>
            <li>Face Mask</li>
            <li>Hand sanitizer</li>
            <li>Health and personal care</li>
            </ul>
        </div>
            <div class="filter-container">
                <p>Filter</p>
                <select>
                    <option>All products of this category</option>
                    <option>Face Mask products</option>
                    <option>Hand sanitizer products</option>
                    <option>Health and personal care products</option>
                </select>
                <p>Price</p>
                <div>
                    <input type="radio" name="price" value="lowtohigh"/> From low to high
                </div>
                <div>
                    <input type="radio" name="price" value="hightolow"/> From high to low
                </div>
                <div>
                   <input type="radio" name="price" value="f10to100"/> From 10$ to 50$
                </div>
                <div>
                    <input type="radio" name="price" value="f100to500"/> From 100$ to 500$
                </div>
                <p>Quantity in stock</p>
                <div>
                    <input type="text" name="quantity"/>
                </div>
                <input type="button" value="GO"/>
            </div>
        
    </div>
    
    <div class="products">
        <div class="product">
            <img src="../categories/Capture10.png"/>
            <p class="p_name">Product 1</p>
            <p class="p_description"><i>abcdergfdedrf</i></p>
            <p class="p_price">30$</p>
            <button class="p_preview">Preview</button>
            <button class="p_cart">Add to cart</button>
        </div>
        <div class="product">
            <img src="../categories/Capture10.png"/>
            <p>Product 2</p>
            <p>abcdergfdedrf</p>
            <p>30$</p>
            <button>Preview</button>
            <button>Add to cart</button>
        </div>
        <div class="product">
            <img src="../categories/Capture10.png"/>
            <p>Product 3</p>
            <p>abcdergfdedrf</p>
            <p>30$</p>
            <button>Preview</button>
            <button>Add to cart</button>
        </div>
        <div class="product">
            <img src="../categories/Capture10.png"/>
            <p>Product 1</p>
            <p>abcdergfdedrf</p>
            <p>30$</p>
            <button>Preview</button>
            <button>Add to cart</button>
        </div>
        <div class="product">
            <img src="../categories/Capture10.png"/>
            <p>Product 1</p>
            <p>abcdergfdedrf</p>
            <p>30$</p>
            <button>Preview</button>
            <button>Add to cart</button>
        </div>
        <div class="product">
            <img src="../categories/Capture10.png"/>
            <p>Product 1</p>
            <p>abcdergfdedrf</p>
            <p>30$</p>
            <button>Preview</button>
            <button>Add to cart</button>
        </div>
        
        </div>
    </div>
</div>
<?php
include "../footer/footer.php";
?>