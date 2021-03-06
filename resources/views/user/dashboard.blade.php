@extends('layouts.user')
@section('title', __('User Dashboard'))
@php
$has_sidebar = false;
$base_currency = base_currency();
$image = (gws('welcome_img_hide', 0)==0) ? 'welcome.png' : '';
@endphp

@section('content')
<div class="content-area user-account-dashboard">
   
    @include('layouts.messages')
    <div class="row">
        <div class="col-lg-4">
            {!! UserPanel::user_balance_card($contribution, ['vers' => 'side', 'class'=> 'card-full-height']) !!}
            
        </div>
        <div class="col-lg-4 col-md-6">
        
            {!! UserPanel::user_token_block('', ['vers' => 'buy']) !!}
            
        </div>
        <div class="col-lg-4 col-md-6">
            
            <div class="account-info card card-full-height">
           
                <div class="card-innr">
                    {!! UserPanel::user_account_status() !!}
        
                    
                    <div class="gaps-2x"></div>
                    {!! UserPanel::user_account_wallet() !!}
                </div>
            </div>
        </div>
        @if(get_page('home_top', 'status') == 'active')
        <div class="col-12{{ (gws('user_sales_progress', 1)==1) ? ' col-lg-7' : '' }}">
            {!! UserPanel::content_block('welcome', ['image' => $image, 'class' => 'card-full-height']) !!}
        </div>
        @if(gws('user_sales_progress', 1)==1)
        <div class="col-12 col-lg-5">
            {!! UserPanel::token_sales_progress('',  ['class' => 'card-full-height']) !!}
        </div>
        @endif
        @endif

    </div>
</div>

<!-- Add Token -->
<!DOCTYPE html>
<html lang="en" class="js">
<head>
        
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body class="admin-dashboard page-user">

    <div id="ajax-modal"></div>
    <div class="modal fade" id="addTnx">
    <div class="modal-dialog modal-dialog-md modal-dialog-centered">
        <div class="modal-content">
            <a href="#" class="modal-close" data-dismiss="modal" aria-label="Close"><em class="ti ti-close"></em></a>
            <div class="popup-body popup-body-md">
                <h3 class="popup-title">Manually Add Tokens</h3>
                <form action="{{'user/token-transfer'}}" method="POST" class="validate-modern" id="add_token1" autocomplete="off">
                @csrf
                    <!-- Hide unnecessary fields 
                    <div class="row">
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
                -->
                        <div class="col-sm-6">
                            <div class="input-item input-with-label">
                                
                                <!-- <label class="input-item-label">Token Add By Email</label> -->
                                <div class="input-wrap">

                    <!-- <input Type="text" name ="user" required="" style="border-width: thin" > 
                    
                    
                   <h3> OR</h3> -->
                    <label class="input-item-label">Token Add By Name Or Email</label>
   
   <div class="form-group">
    <input type="text" name="user_name" id="user_name" required="" class="form-control input-lg" placeholder="Enter Name Or Email" />
    <div id="userList">
    </div>
   
   {{ csrf_field() }}
  </div>
                                    <!--
                                    <select name="user" required="" class="select-block select-bordered" data-dd-class="search-on">
                                                                                <option value="43">Select</option>
                                                                                <option value="42"><template class="__cf_email__" data-cfemail="3e4757465f58510d060d077e4b4e4d5a5153105d5153">[email&#160;protected]</template></option>
                                                                                <option value="39">RONAK</option>
                                                                               
                                                                            </select>


                                    <span class="input-note">Select account to add token.</span>
                                    -->
                                </div>
                                
                            </div>
                        </div>


                <!--  
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
                -->
                        <div class="col-sm-6">
                            <div class="input-item input-with-label">
                                <label class="input-item-label">Number of Token</label>
                                <div class="input-wrap">
                                    <input class="input-bordered" type="number" name="total_tokens" max="10000000" required>
                                </div>
                            </div>
                        </div>
                       
                      <!-- <h3> All Users </h3>
                        @foreach($all_users as $all_users)
                {{$all_users->name}}<br>
               
           @endforeach -->

 
                        <!-- 
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
                -->
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



<!-- End token-transfer -->

<script>
$(document).ready(function(){

 $('#user_name').keyup(function(){ 
        var query = $(this).val();
        if(query != '')
        {
         var _token = $('input[name="_token"]').val();
         $.ajax({
          url:"{{ 'user/autocomplete-fetch' }}",
          method:"POST",
          data:{query:query, _token:_token},
          success:function(data){
           $('#userList').fadeIn();  
                    $('#userList').html(data);
          }
         });
        }
    });

    $(document).on('click', 'li', function(){  
        $('#user_name').val($(this).text());  
        $('#userList').fadeOut();  
    });  

});
</script>




@endsection
