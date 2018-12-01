<section class="header-middle v3 bg-blue">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="header-logo xs-center">
                    <a href="{{ route('trangchu') }}">
                    <img src="{{ asset('public/frontend/images/logo/business_logo.png')}}" alt="">
                    </a>
                </div>
            </div>
            <!-- col end -->
            {{-- <div class="col-lg-8 col-md-6">
                <div class="currency-list-item text-right">
                    <ul class="slick marquee">
                        <li class="slick-slide">
                            <div class="currency-item left">
                                <label>Nifty</label>
                                <span>143.88</span>
                            </div>
                            <div class="currency-item right">
                                <label>15863.55</label>
                                <span>
                                <i class="fa fa-caret-down"></i> 0.85%</span>
                            </div>
                        </li>
                        <!-- li end-->
                        <li class="slick-slide">
                            <div class="currency-item left">
                                <label>Nifty</label>
                                <span>143.88</span>
                            </div>
                            <div class="currency-item right">
                                <label>15863.55</label>
                                <span>
                                <i class="fa fa-caret-up"></i> 0.85%</span>
                            </div>
                        </li>
                        <!-- li end-->
                        <li class="slick-slide">
                            <div class="currency-item left">
                                <label>Nifty</label>
                                <span>143.88</span>
                            </div>
                            <div class="currency-item right">
                                <label>15863.55</label>
                                <span>
                                <i class="fa fa-caret-down"></i> 0.85%</span>
                            </div>
                        </li>
                        <!-- li end-->
                        <li class="slick-slide">
                            <div class="currency-item left">
                                <label>Nifty</label>
                                <span>143.88</span>
                            </div>
                            <div class="currency-item right">
                                <label>15863.55</label>
                                <span>
                                <i class="fa fa-caret-up"></i> 0.85%</span>
                            </div>
                        </li>
                        <!-- li end-->
                    </ul>
                </div>
            </div> --}}

            @php
            
            $display = @file_get_contents('https://api.coinmarketcap.com/v2/ticker/?limit=10');
            $output= json_decode($display);

                
            @endphp

            <div class="col-lg-8 col-md-6 no-padding b-navbar-header__item hidden-sm hidden-xs">
                <div id="courses" class="row">
                    <div class="ccc-widget ccc-header-v2">
                        <div class="ccc-coin-container ccc-coin-column ccc-0" id="coindex">
                            <div class="currency-menu">
                                <button class="currency-menu__btn"></button> 
                                <div class="currency-drop-down currency-drop-down_header-coins-courses">
                                    <ul class="currency-drop-down__list" style="display: none;">
                                        <li class="currency-drop-down__item"><button type="button" class="currency-drop-down__btn"><span class="currency-drop-down__btn-wrp"><span class="currency-drop-down__btn-cap">USD</span> <span class="currency-drop-down__btn-value">4,480</span></span></button></li>
                                        <li class="currency-drop-down__item"><button type="button" class="currency-drop-down__btn"><span class="currency-drop-down__btn-wrp"><span class="currency-drop-down__btn-cap">EUR</span> <span class="currency-drop-down__btn-value">3,915</span></span></button></li>
                                        <li class="currency-drop-down__item"><button type="button" class="currency-drop-down__btn"><span class="currency-drop-down__btn-wrp"><span class="currency-drop-down__btn-cap">GBP</span> <span class="currency-drop-down__btn-value">3,482</span></span></button></li>
                                        <li class="currency-drop-down__item"><button type="button" class="currency-drop-down__btn"><span class="currency-drop-down__btn-wrp"><span class="currency-drop-down__btn-cap">JPY</span> <span class="currency-drop-down__btn-value">501,310</span></span></button></li>
                                        <li class="currency-drop-down__item"><button type="button" class="currency-drop-down__btn"><span class="currency-drop-down__btn-wrp"><span class="currency-drop-down__btn-cap">RUR</span> <span class="currency-drop-down__btn-value">297,689</span></span></button></li>
                                    </ul>
                                </div>
                            </div>
                            <div data-id="USD" class="ccc-price ccc-price_BTC_USD" style="display: none;">
                                <div class="priceTabContent">
                                    <a href="/bitcoin-price-index" title="BTC_USD" rel="nofollow" class="priceName"> BTC </a> 
                                    <div class="priceValue priceValue_BTC_USD">
                                        <a href="/bitcoin-price-index" title="BTC_USD" rel="nofollow" class="price-link">$ 4,508</a> 
                                        <div class="priceChange priceChangeDown"><a href="/bitcoin-price-index" title="BTC_USD" rel="nofollow"><i aria-hidden="true" class="fa"></i> <span>-1.35%</span></a></div>
                                    </div>
                                </div>
                            </div>
                            <div data-id="EUR" class="ccc-price ccc-price_BTC_EUR" style="display: none;">
                                <div class="priceTabContent">
                                    <a href="/bitcoin-price-index" title="BTC_EUR" rel="nofollow" class="priceName"> BTC </a> 
                                    <div class="priceValue priceValue_BTC_EUR">
                                        <a href="/bitcoin-price-index" title="BTC_EUR" rel="nofollow" class="price-link">€ 3,936</a> 
                                        <div class="priceChange priceChangeDown"><a href="/bitcoin-price-index" title="BTC_EUR" rel="nofollow"><i aria-hidden="true" class="fa"></i> <span>-1.28%</span></a></div>
                                    </div>
                                </div>
                            </div>
                            <div data-id="GBP" class="ccc-price ccc-price_BTC_GBP" style="display: none;">
                                <div class="priceTabContent">
                                    <a href="/bitcoin-price-index" title="BTC_GBP" rel="nofollow" class="priceName"> BTC </a> 
                                    <div class="priceValue priceValue_BTC_GBP">
                                        <a href="/bitcoin-price-index" title="BTC_GBP" rel="nofollow" class="price-link">£ 3,493</a> 
                                        <div class="priceChange priceChangeDown"><a href="/bitcoin-price-index" title="BTC_GBP" rel="nofollow"><i aria-hidden="true" class="fa"></i> <span>-2.21%</span></a></div>
                                    </div>
                                </div>
                            </div>
                            <div data-id="JPY" class="ccc-price ccc-price_BTC_JPY" style="display: none;">
                                <div class="priceTabContent">
                                    <a href="/bitcoin-price-index" title="BTC_JPY" rel="nofollow" class="priceName"> BTC </a> 
                                    <div class="priceValue priceValue_BTC_JPY">
                                        <a href="/bitcoin-price-index" title="BTC_JPY" rel="nofollow" class="price-link">¥ 504,244</a> 
                                        <div class="priceChange priceChangeDown"><a href="/bitcoin-price-index" title="BTC_JPY" rel="nofollow"><i aria-hidden="true" class="fa"></i> <span>-1.46%</span></a></div>
                                    </div>
                                </div>
                            </div>
                            <div data-id="RUR" class="ccc-price ccc-price_BTC_RUR">
                                <div class="priceTabContent">
                                    <a href="/bitcoin-price-index" title="BTC_RUR" rel="nofollow" class="priceName"> BTC </a> 
                                    <div class="priceValue priceValue_BTC_RUR">
                                        <a href="/bitcoin-price-index" title="BTC_RUR" rel="nofollow" class="price-link">₽ 299,991</a> 
                                        <div class="priceChange priceChangeDown"><a href="/bitcoin-price-index" title="BTC_RUR" rel="nofollow"><i aria-hidden="true" class="fa"></i> <span>-4.37%</span></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ccc-coin-container ccc-coin-column ccc-1">
                            <div data-id="USD" class="ccc-price ccc-price_ETH_USD" style="display: none;">
                                <div class="priceTabContent">
                                    <a href="/ethereum-price-index" title="ETH_USD" rel="nofollow" class="priceName"> ETH </a> 
                                    <div class="priceValue priceValue_ETH_USD">
                                        <a href="/ethereum-price-index" title="ETH_USD" rel="nofollow" class="price-link">$ 131</a> 
                                        <div class="priceChange priceChangeDown"><a href="/ethereum-price-index" title="ETH_USD" rel="nofollow"><i aria-hidden="true" class="fa"></i> <span>-3.26%</span></a></div>
                                    </div>
                                </div>
                            </div>
                            <div data-id="EUR" class="ccc-price ccc-price_ETH_EUR" style="display: none;">
                                <div class="priceTabContent">
                                    <a href="/ethereum-price-index" title="ETH_EUR" rel="nofollow" class="priceName"> ETH </a> 
                                    <div class="priceValue priceValue_ETH_EUR">
                                        <a href="/ethereum-price-index" title="ETH_EUR" rel="nofollow" class="price-link">€ 114</a> 
                                        <div class="priceChange priceChangeDown"><a href="/ethereum-price-index" title="ETH_EUR" rel="nofollow"><i aria-hidden="true" class="fa"></i> <span>-3.05%</span></a></div>
                                    </div>
                                </div>
                            </div>
                            <div data-id="GBP" class="ccc-price ccc-price_ETH_GBP" style="display: none;">
                                <div class="priceTabContent">
                                    <a href="/ethereum-price-index" title="ETH_GBP" rel="nofollow" class="priceName"> ETH </a> 
                                    <div class="priceValue priceValue_ETH_GBP">
                                        <a href="/ethereum-price-index" title="ETH_GBP" rel="nofollow" class="price-link">£ 102</a> 
                                        <div class="priceChange priceChangeDown"><a href="/ethereum-price-index" title="ETH_GBP" rel="nofollow"><i aria-hidden="true" class="fa"></i> <span>-3.57%</span></a></div>
                                    </div>
                                </div>
                            </div>
                            <div data-id="JPY" class="ccc-price ccc-price_ETH_JPY" style="display: none;">
                                <div class="priceTabContent">
                                    <a href="/ethereum-price-index" title="ETH_JPY" rel="nofollow" class="priceName"> ETH </a> 
                                    <div class="priceValue priceValue_ETH_JPY">
                                        <a href="/ethereum-price-index" title="ETH_JPY" rel="nofollow" class="price-link">¥ 14,765</a> 
                                        <div class="priceChange priceChangeDown"><a href="/ethereum-price-index" title="ETH_JPY" rel="nofollow"><i aria-hidden="true" class="fa"></i> <span>-2.34%</span></a></div>
                                    </div>
                                </div>
                            </div>
                            <div data-id="RUR" class="ccc-price ccc-price_ETH_RUR">
                                <div class="priceTabContent">
                                    <a href="/ethereum-price-index" title="ETH_RUR" rel="nofollow" class="priceName"> ETH </a> 
                                    <div class="priceValue priceValue_ETH_RUR">
                                        <a href="/ethereum-price-index" title="ETH_RUR" rel="nofollow" class="price-link">₽ 8,765</a> 
                                        <div class="priceChange priceChangeDown"><a href="/ethereum-price-index" title="ETH_RUR" rel="nofollow"><i aria-hidden="true" class="fa"></i> <span>-1.81%</span></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ccc-coin-column ccc-coin-column_last">
                            <div class="ccc-coin-container ccc-coin-container-small ccc-2">
                                <div data-id="USD" class="ccc-price ccc-price_LTC_USD" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/ltc-price-index" title="LTC_USD" rel="nofollow" class="priceName"> LTC </a> 
                                        <div class="priceValue priceValue_LTC_USD">
                                            <a href="/ltc-price-index" title="LTC_USD" rel="nofollow" class="price-link">$ 33</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>-0.45%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="EUR" class="ccc-price ccc-price_LTC_EUR" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/ltc-price-index" title="LTC_EUR" rel="nofollow" class="priceName"> LTC </a> 
                                        <div class="priceValue priceValue_LTC_EUR">
                                            <a href="/ltc-price-index" title="LTC_EUR" rel="nofollow" class="price-link">€ 29</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>-0.20%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="GBP" class="ccc-price ccc-price_LTC_GBP" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/ltc-price-index" title="LTC_GBP" rel="nofollow" class="priceName"> LTC </a> 
                                        <div class="priceValue priceValue_LTC_GBP">
                                            <a href="/ltc-price-index" title="LTC_GBP" rel="nofollow" class="price-link">£ 26</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>-1.21%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="JPY" class="ccc-price ccc-price_LTC_JPY" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/ltc-price-index" title="LTC_JPY" rel="nofollow" class="priceName"> LTC </a> 
                                        <div class="priceValue priceValue_LTC_JPY">
                                            <a href="/ltc-price-index" title="LTC_JPY" rel="nofollow" class="price-link">¥ 3,757</a> 
                                            <div class="priceChange priceChangeUp"><i aria-hidden="true" class="fa"></i> <span>+0.91%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="RUR" class="ccc-price ccc-price_LTC_RUR">
                                    <div class="priceTabContent">
                                        <a href="/ltc-price-index" title="LTC_RUR" rel="nofollow" class="priceName"> LTC </a> 
                                        <div class="priceValue priceValue_LTC_RUR">
                                            <a href="/ltc-price-index" title="LTC_RUR" rel="nofollow" class="price-link">₽ 2,235</a> 
                                            <div class="priceChange priceChangeUp"><i aria-hidden="true" class="fa"></i> <span>+0.91%</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ccc-coin-container ccc-coin-container-small ccc-3">
                                <div data-id="USD" class="ccc-price ccc-price_XRP_USD" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/xrp-price-index" title="XRP_USD" rel="nofollow" class="priceName"> XRP </a> 
                                        <div class="priceValue priceValue_XRP_USD">
                                            <a href="/xrp-price-index" title="XRP_USD" rel="nofollow" class="price-link">$ 0.43</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>-1.18%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="EUR" class="ccc-price ccc-price_XRP_EUR" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/xrp-price-index" title="XRP_EUR" rel="nofollow" class="priceName"> XRP </a> 
                                        <div class="priceValue priceValue_XRP_EUR">
                                            <a href="/xrp-price-index" title="XRP_EUR" rel="nofollow" class="price-link">€ 0.37</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>-1.15%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="GBP" class="ccc-price ccc-price_XRP_GBP" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/xrp-price-index" title="XRP_GBP" rel="nofollow" class="priceName"> XRP </a> 
                                        <div class="priceValue priceValue_XRP_GBP">
                                            <a href="/xrp-price-index" title="XRP_GBP" rel="nofollow" class="price-link">£ 0.33</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>0.20%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="JPY" class="ccc-price ccc-price_XRP_JPY" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/xrp-price-index" title="XRP_JPY" rel="nofollow" class="priceName"> XRP </a> 
                                        <div class="priceValue priceValue_XRP_JPY">
                                            <a href="/xrp-price-index" title="XRP_JPY" rel="nofollow" class="price-link">¥ 48</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>-0.61%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="RUR" class="ccc-price ccc-price_XRP_RUR">
                                    <div class="priceTabContent">
                                        <a href="/xrp-price-index" title="XRP_RUR" rel="nofollow" class="priceName"> XRP </a> 
                                        <div class="priceValue priceValue_XRP_RUR">
                                            <a href="/xrp-price-index" title="XRP_RUR" rel="nofollow" class="price-link">₽ 29</a> 
                                            <div class="priceChange priceChangeUp"><i aria-hidden="true" class="fa"></i> <span>+0.20%</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ccc-coin-container ccc-coin-container-small ccc-4">
                                <div data-id="USD" class="ccc-price ccc-price_EOS_USD" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/eos-price-index" title="EOS_USD" rel="nofollow" class="priceName"> EOS </a> 
                                        <div class="priceValue priceValue_EOS_USD">
                                            <a href="/eos-price-index" title="EOS_USD" rel="nofollow" class="price-link">$ 3.76</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>-2.59%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="EUR" class="ccc-price ccc-price_EOS_EUR" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/eos-price-index" title="EOS_EUR" rel="nofollow" class="priceName"> EOS </a> 
                                        <div class="priceValue priceValue_EOS_EUR">
                                            <a href="/eos-price-index" title="EOS_EUR" rel="nofollow" class="price-link">€ 3.23</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>-2.12%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="GBP" class="ccc-price ccc-price_EOS_GBP" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/eos-price-index" title="EOS_GBP" rel="nofollow" class="priceName"> EOS </a> 
                                        <div class="priceValue priceValue_EOS_GBP">
                                            <a href="/eos-price-index" title="EOS_GBP" rel="nofollow" class="price-link">£ 2.92</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>-3.95%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="JPY" class="ccc-price ccc-price_EOS_JPY" style="display: none;">
                                    <div class="priceTabContent">
                                        <a href="/eos-price-index" title="EOS_JPY" rel="nofollow" class="priceName"> EOS </a> 
                                        <div class="priceValue priceValue_EOS_JPY">
                                            <a href="/eos-price-index" title="EOS_JPY" rel="nofollow" class="price-link">¥ 415</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>-0.95%</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-id="RUR" class="ccc-price ccc-price_EOS_RUR">
                                    <div class="priceTabContent">
                                        <a href="/eos-price-index" title="EOS_RUR" rel="nofollow" class="priceName"> EOS </a> 
                                        <div class="priceValue priceValue_EOS_RUR">
                                            <a href="/eos-price-index" title="EOS_RUR" rel="nofollow" class="price-link">₽ 247</a> 
                                            <div class="priceChange priceChangeDown"><i aria-hidden="true" class="fa"></i> <span>-0.94%</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            

<script type="text/javascript">
$( document ).ready(function() {
$(".currency-menu__btn").on("click", function (e) {    

    $('.currency-drop-down__list').show();
});
setInterval(function() {
    $.post('https://api.coinmarketcap.com/v2/ticker/?limit=10', '' , function(res){
        
        var html = '<ul class="slick marquee">'
            +'<li class="slick-slide">'
                +'<div class="currency-item left">'
                    +'<label>Nifty 1</label>'
                    +'<span>143.88</span>'
                +'</div>'
                +'<div class="currency-item right">'
                    +'<label>15863.55</label>'
                    +'<span>'
                    +'<i class="fa fa-caret-down"></i> 0.85%</span>'
                +'</div>'
            +'</li>'
           
          
        +'</ul>';

        $("#coindex").append( html );

    },'JSON');
    
}, 15000);


});
</script>
            
        </div>
        <!-- row  end -->
    </div>
    <!-- container end -->
</section>