//
//  NavigatorController.swift
//  MoyohakPartner
//
//  Created by Nikhil Nandha on 10/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import Foundation
import UIKit

struct Storyboard {
    let main: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let shop: UIStoryboard = UIStoryboard(name: "Shop", bundle: nil)
    let qrCode: UIStoryboard = UIStoryboard(name: "QRCode", bundle: nil)
    let cart: UIStoryboard = UIStoryboard(name: "Cart", bundle: nil)
    let offers: UIStoryboard = UIStoryboard(name: "Offers", bundle: nil)
    let profile: UIStoryboard = UIStoryboard(name: "Profile", bundle: nil)
    let product: UIStoryboard = UIStoryboard(name: "Product", bundle: nil)
}

struct NavigatorController {
    
    //MARK: - Login  & Registration -
    
    let Intro = Storyboard().main.instantiateViewController(withIdentifier: "IntroViewController") as! IntroViewController
    let IntroNC = Storyboard().main.instantiateViewController(withIdentifier: "IntroViewController_NC") as! UINavigationController
    
    let Login = Storyboard().main.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
    let LoginNC = Storyboard().main.instantiateViewController(withIdentifier: "LoginViewController_NC") as! UINavigationController
    
    let Registration = Storyboard().main.instantiateViewController(withIdentifier: "RegistrationViewController") as! RegistrationViewController
    let RegistrationNC = Storyboard().main.instantiateViewController(withIdentifier: "RegistrationViewController_NC") as! UINavigationController
    
    let Otp = Storyboard().main.instantiateViewController(withIdentifier: "OTPViewController") as! OTPViewController
    let OtpNC = Storyboard().main.instantiateViewController(withIdentifier: "OTPViewController_NC") as! UINavigationController
    
    let ForgotPassword = Storyboard().main.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
    let ForgotPasswordNC = Storyboard().main.instantiateViewController(withIdentifier: "ForgotPasswordViewController_NC") as! UINavigationController
    
    //MARK: - Tab & Home -
    
    let Shop = Storyboard().shop.instantiateViewController(withIdentifier: "ShopViewController") as! ShopViewController
    let ShopNC = Storyboard().shop.instantiateViewController(withIdentifier: "ShopViewController_NC") as! UINavigationController
    
    let QRCode = Storyboard().qrCode.instantiateViewController(withIdentifier: "QRCodeViewController") as! QRCodeViewController
    let QRCodeNC = Storyboard().qrCode.instantiateViewController(withIdentifier: "QRCodeViewController_NC") as! UINavigationController
    
    let Cart = Storyboard().cart.instantiateViewController(withIdentifier: "CartViewController") as! CartViewController
    let CartNC = Storyboard().cart.instantiateViewController(withIdentifier: "CartViewController_NC") as! UINavigationController
    
    let Offers = Storyboard().offers.instantiateViewController(withIdentifier: "OffersViewController") as! OffersViewController
    let OffersNC = Storyboard().offers.instantiateViewController(withIdentifier: "OffersViewController_NC") as! UINavigationController
    
    let Profile = Storyboard().profile.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
    let ProfileNC = Storyboard().profile.instantiateViewController(withIdentifier: "ProfileViewController_NC") as! UINavigationController
    
    //MARK: - Categories & Search -
    
    let Categories = Storyboard().shop.instantiateViewController(withIdentifier: "ShopCategoriesViewController") as! ShopCategoriesViewController
    let CategoriesNC = Storyboard().shop.instantiateViewController(withIdentifier: "ShopCategoriesViewController_NC") as! UINavigationController
    
    let SubCategories = Storyboard().shop.instantiateViewController(withIdentifier: "ShopSubCategoriesViewController") as! ShopSubCategoriesViewController
    let SubCategoriesNC = Storyboard().shop.instantiateViewController(withIdentifier: "ShopSubCategoriesViewController_NC") as! UINavigationController
    
    //MARK: - Products -
    
    let ProductList = Storyboard().product.instantiateViewController(withIdentifier: "ProductListViewViewController") as! ProductListViewViewController
    let ProductListNC = Storyboard().product.instantiateViewController(withIdentifier: "ProductListViewViewController_NC") as! UINavigationController
    
    let ProductDetails = Storyboard().product.instantiateViewController(withIdentifier: "ProductDetailsViewController") as! ProductDetailsViewController
    let ProductDetailsNC = Storyboard().product.instantiateViewController(withIdentifier: "ProductDetailsViewController_NC") as! UINavigationController
    
    let ProductDescription = Storyboard().product.instantiateViewController(withIdentifier: "ProductDetailsDescriptionViewController") as! ProductDetailsDescriptionViewController
    let ProductDescriptionNC = Storyboard().product.instantiateViewController(withIdentifier: "ProductDetailsDescriptionViewController_NC") as! UINavigationController
    
    let RateProduct = Storyboard().product.instantiateViewController(withIdentifier: "RateProductViewController") as! RateProductViewController
    let RateProductNC = Storyboard().product.instantiateViewController(withIdentifier: "RateProductViewController_NC") as! UINavigationController
    
    //MARK: - Cart & Checkout -
    
    let Checkout = Storyboard().cart.instantiateViewController(withIdentifier: "CheckoutViewController") as! CheckoutViewController
    let CheckoutNC = Storyboard().cart.instantiateViewController(withIdentifier: "CheckoutViewController_NC") as! UINavigationController
    
    let Payment = Storyboard().cart.instantiateViewController(withIdentifier: "PaymentViewController") as! PaymentViewController
    let PaymentNC = Storyboard().cart.instantiateViewController(withIdentifier: "PaymentViewController_NC") as! UINavigationController
    
    
    //MARK: - Profile -
    
    let Addresses = Storyboard().profile.instantiateViewController(withIdentifier: "AddressListViewController") as! AddressListViewController
    let AddressesNC = Storyboard().profile.instantiateViewController(withIdentifier: "AddressListViewController_NC") as! UINavigationController
    
    let AddAddresses = Storyboard().profile.instantiateViewController(withIdentifier: "AddAddressViewController") as! AddAddressViewController
    let AddAddressesNC = Storyboard().profile.instantiateViewController(withIdentifier: "AddAddressViewController_NC") as! UINavigationController
    
    let MyOrders = Storyboard().profile.instantiateViewController(withIdentifier: "MyOrdersViewController") as! MyOrdersViewController
    let MyOrdersNC = Storyboard().profile.instantiateViewController(withIdentifier: "MyOrdersViewController_NC") as! UINavigationController
    
    let MyWishlist = Storyboard().profile.instantiateViewController(withIdentifier: "MyWishlistsViewController") as! MyWishlistsViewController
    let MyWishlistNC = Storyboard().profile.instantiateViewController(withIdentifier: "MyWishlistsViewController_NC") as! UINavigationController
    
}
