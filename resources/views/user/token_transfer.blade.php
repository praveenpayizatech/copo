
        <!DOCTYPE html>
<html lang="en" class="js">
<head>
    <meta charset="utf-8">
    <meta name="apps" content="TokenLite">
    <meta name="author" content="Softnio">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="JybdBvui93I5xEZRQi9G7jpcl8GxQVu8v8O78xzk">
    <meta name="site-token" content="67b9bKti7GZDrZw08v8jXOV9wM1Id28b">
    <link rel="shortcut icon" href="http://copotechnologies.com/images/favicon.png">
    <title>Pending Transactions | Copo Technologies</title>
    
    <link rel="stylesheet" href="http://copotechnologies.com/assets/css/vendor.bundle.css?ver=20210714130">
    <link rel="stylesheet" href="http://copotechnologies.com/assets/css/style.css?ver=20210714130">
    <!-- TokenLite v1301283a20210714. Application Developed by Softnio -->
</head>

<body class="admin-dashboard page-user">
    <div class="topbar-wrap">
        <div class="topbar is-sticky">
            <div class="container">
                <div class="d-flex justify-content-between align-items-center">
                    <ul class="topbar-nav d-lg-none">
                        <li class="topbar-nav-item relative">
                            <a class="toggle-nav" href="#">
                                <div class="toggle-icon">
                                    <span class="toggle-line"></span>
                                    <span class="toggle-line"></span>
                                    <span class="toggle-line"></span>
                                    <span class="toggle-line"></span>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <div class="topbar-logo">
                        <a href="http://copotechnologies.com" class="site-brand">
                                                        <img height="40" src="http://copotechnologies.com/images/logo-light.png"  alt="TokenLite Application">
                    
                            
                                                    </a>
                    </div>
                    <ul class="topbar-nav">
                        <li class="topbar-nav-item relative">
                            <span class="user-welcome d-none d-lg-inline-block">Hello! User</span>
                            <a class="toggle-tigger user-thumb" href="#"><em class="ti ti-user"></em></a>
                            <div class="toggle-class dropdown-content dropdown-content-right dropdown-arrow-right user-dropdown">
                                <div class="user-status">
                                    <h6 class="user-status-title">User <span class="text-white-50">(UD00001)</span></h6>
                                    <div class="user-status-balance"><small><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="6e0f0a0307002e09030f0702400d0103">[email&#160;protected]</a></small></div>
                                </div>
                                <ul class="user-links">
                                    <li><a href="http://copotechnologies.com/admin/profile"><i class="ti ti-id-badge"></i>My Profile</a></li>

                                    <li><a href="http://copotechnologies.com/admin/profile/activity"><i class="ti ti-eye"></i>Activity</a></li>
                                </ul>
                                <ul class="user-links bg-light">
                                    <li><a href="http://copotechnologies.com/log-out" onclick="event.preventDefault();document.getElementById('logout-form').submit();"><i class="ti ti-power-off"></i>Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        
    
    <div class="page-content">

    <a href="#" class="btn btn-sm btn-auto btn-primary" data-toggle="modal" data-target="#addTnx">
                                    <em class="fas fa-plus-circle"></em><span>Add <span class="d-none d-sm-inline-block">Tokens</span></span>
                                </a>

</div>

    
    <form id="logout-form" action="http://copotechnologies.com/logout" method="POST" style="display: none;">
        <input type="hidden" name="_token" value="JybdBvui93I5xEZRQi9G7jpcl8GxQVu8v8O78xzk">    </form>
    <div id="ajax-modal"></div>
    <div class="modal fade" id="addTnx">
    <div class="modal-dialog modal-dialog-md modal-dialog-centered">
        <div class="modal-content">
            <a href="#" class="modal-close" data-dismiss="modal" aria-label="Close"><em class="ti ti-close"></em></a>
            <div class="popup-body popup-body-md">
                <h3 class="popup-title">Manually Add Tokens</h3>
                <form action="http://copotechnologies.com/admin/ajax/transactions/insert" method="POST" class="validate-modern" id="add_token1" autocomplete="off">
                    <input type="hidden" name="_token" value="JybdBvui93I5xEZRQi9G7jpcl8GxQVu8v8O78xzk">                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-item input-with-label">
                                <label class="input-item-label">Tranx Type</label>
                                <div class="input-wrap">
                                    <select name="type" class="select select-block select-bordered" required>
                                        <option value="purchase">Purchase</option>
                                        <option value="bonus">Bonus</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-item input-with-label w-sm-60">
                                <label class="input-item-label">Tranx Date</label>
                                <div class="input-wrap">
                                    <input class="input-bordered date-picker" required="" type="text" name="tnx_date" value="01/28/2022">
                                    <span class="input-icon input-icon-right date-picker-icon"><em class="ti ti-calendar"></em></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-item input-with-label">
                                <label class="input-item-label">Token Added To</label>
                                <div class="input-wrap">
                                    <select name="user" required="" class="select-block select-bordered" data-dd-class="search-on">
                                                                                <option value="43">Nitin</option>
                                                                                <option value="42"><template class="__cf_email__" data-cfemail="3e4757465f58510d060d077e4b4e4d5a5153105d5153">[email&#160;protected]</template></option>
                                                                                <option value="39">RONAK</option>
                                                                                <option value="36">Rutveek#</option>
                                                                                <option value="35">Someel shah</option>
                                                                                <option value="34">akram</option>
                                                                                <option value="32">Nikhil Lokhande</option>
                                                                                <option value="31">Karan Punwani</option>
                                                                                <option value="30">Karan Punwani</option>
                                                                                <option value="29">Paras</option>
                                                                                <option value="26">Sahil</option>
                                                                                <option value="27">Jolly</option>
                                                                                <option value="48">Bhavik</option>
                                                                                <option value="49">sahil payiza</option>
                                                                                <option value="50">Samaksh Mathur</option>
                                                                                <option value="51">sahil</option>
                                                                                <option value="59">try</option>
                                                                                <option value="64"><template class="__cf_email__" data-cfemail="563c332f373a6f6e65646e163f3533253f3a397835393b">[email&#160;protected]</template></option>
                                                                                <option value="67">asasas</option>
                                                                            </select>
                                    <span class="input-note">Select account to add token.</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-item input-with-label">
                                <label class="input-item-label">Token for Stage</label>
                                <div class="input-wrap">
                                    <select name="stage" class="select select-block select-bordered" required>
                                                                                <option value="1">Stage 1</option>
                                                                                <option value="2">Stage 2</option>
                                                                                <option value="3">Stage 3</option>
                                                                                <option value="4">Stage 4</option>
                                                                                <option value="5">Demo Stage 5</option>
                                                                                <option value="6">Demo Stage 6</option>
                                                                                <option value="7">Demo Stage 7</option>
                                                                                <option value="8">Demo Stage 8</option>
                                                                                <option value="9">Demo Stage 9</option>
                                                                                <option value="10">Demo Stage 10</option>
                                                                                <option value="11">Demo Stage 11</option>
                                                                                <option value="12">Demo Stage 12</option>
                                                                                <option value="13">Demo Stage 13</option>
                                                                                <option value="14">Demo Stage 14</option>
                                                                                <option value="15">Demo Stage 15</option>
                                                                            </select>
                                    <span class="input-note">Select Stage where from adjust tokens.</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-item input-with-label">
                                <label class="input-item-label">Payment Gateway</label>
                                <div class="input-wrap">
                                    <select name="payment_method" class="select select-block select-bordered">
                                                                                <option value="manual">Manual</option>
                                                                            </select>
                                </div>
                                <span class="input-note">Select method for this transaction.</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-item input-with-label">
                                <label class="input-item-label">Payment Amount</label>
                                <div class="row flex-n guttar-10px">
                                    <div class="col-7">
                                        <div class="input-wrap">
                                            <input class="input-bordered" type="number" name="amount" placeholder="Optional">
                                        </div>
                                    </div>
                                    <div class="col-5">
                                        <div class="input-wrap">
                                            <select name="currency" class="select select-block select-bordered">
                                                                                                                                                <option value="USD" selected=&quot;&quot;>USD</option>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <option value="INR">INR</option>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <option value="ETH">ETH</option>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <span class="input-note">Amount calculate based on stage if leave blank.</span>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="input-item input-with-label">
                                <label class="input-item-label">Payment Address</label>
                                <div class="input-wrap">
                                    <input class="input-bordered" type="text" name="wallet_address" placeholder="Optional">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-item input-with-label">
                                <label class="input-item-label">Number of Token</label>
                                <div class="input-wrap">
                                    <input class="input-bordered" type="number" name="total_tokens" max="10000000" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-item input-with-label">
                                <label class="input-item-label d-none d-sm-inline-block">&nbsp;</label>
                                <div class="input-wrap input-wrap-checkbox mt-sm-2">
                                    <input id="auto-bonus" class="input-checkbox input-checkbox-md" type="checkbox" name="bonus_calc">
                                    <label for="auto-bonus"><span>Bonus Adjusted from Stage</span></label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Add Token</button>
                    <div class="gaps-3x"></div>
                    <div class="note note-plane note-light">
                        <em class="fas fa-info-circle"></em>
                        <p>If checked <strong>'Bonus Adjusted'</strong>, it will applied bonus based on selected stage (only for Purchase type).</p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


    <div class="page-overlay">
        <div class="spinner"><span class="sp sp1"></span><span class="sp sp2"></span><span class="sp sp3"></span></div>
    </div>

    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script type="text/javascript">
        var base_url = "http://copotechnologies.com", get_trnx_url = "http://copotechnologies.com/admin/ajax/transactions/view", view_user_url = "http://copotechnologies.com/admin/ajax/users/view", show_user_info = "http://copotechnologies.com/admin/ajax/users/showinfo", pm_manage_url = "http://copotechnologies.com/admin/ajax/payment-methods/view", get_kyc_url = "http://copotechnologies.com/admin/ajax/kyc/view", update_kyc_url = "http://copotechnologies.com/admin/ajax/kyc/update", trnx_action_url = "http://copotechnologies.com/admin/ajax/transactions/update", trnx_adjust_url = "http://copotechnologies.com/admin/ajax/transactions/adjust", get_et_url = "http://copotechnologies.com/admin/ajax/settings/email/template/view", clear_cache_url = "http://copotechnologies.com/admin/clear", whitepaper_uploads = "http://copotechnologies.com/admin/ajax/pages/upload", view_page_url = "http://copotechnologies.com/admin/ajax/pages/view", unverified_delete_url = "http://copotechnologies.com/admin/ajax/users/delete/all", stage_action_url = "http://copotechnologies.com/admin/ajax/stages/actions", stage_active_url = "http://copotechnologies.com/admin/ajax/stages/active", stage_pause_url = "http://copotechnologies.com/admin/ajax/stages/pause", quick_update_url = "http://copotechnologies.com/admin/ajax/payment-methods/quick-update", meta_update_url = "http://copotechnologies.com/admin/ajax/settings/meta/update",  csrf_token = document.querySelector('meta[name="csrf-token"]').getAttribute('content'); 
    </script>
    <script src="http://copotechnologies.com/assets/js/jquery.bundle.js?ver=20210714130"></script>
    <script src="http://copotechnologies.com/assets/js/script.js?ver=20210714130"></script>
    <script src="http://copotechnologies.com/assets/js/admin.app.js?ver=20210714130"></script>
        </body>
</html>
                
                