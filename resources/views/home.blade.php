@extends('layouts.app')

@section('content')
<br/>
<br/>

<?php
$url = "https://btc-e.com/api/2/btc_usd/ticker";
$json = json_decode(file_get_contents($url), true);
$price = $json["ticker"]["last"];
?>


<script>
    function btcConvert(input) {
        if (isNaN(input.value)) {
            input.value = 0;
        }
        var price = "<?php echo $price; ?>";
        var output = input.value * price;
        var co = document.getElementById('ci');
        ci.value = output.toFixed(2);
    }
    function usdConvert(input) {
        if (isNaN(input.value)) {
            input.value = 0;
        }
        var price2 = "<?php echo $price; ?>";
        var output2 = input.value / price2;
        var co2 = document.getElementById('bi');
        bi.value = output2.toFixed(8);
    }


</script>
<center>
    <h2>BTC/USD Convertidor</h2>
    <input type="text" id="bi" placeholder="BTC" onchange="btcConvert(this);" onkeyup="btcConvert(this);"/>&nbsp;&nbsp;
    <input type="text" id="ci" placeholder="USD" onchange="usdConvert(this);" onkeyup="usdConvert(this);" />
    <br/>
</center>
<table width="100%" border="0" cellpadding="2">
    <tr>
        <td>

            <a href="bitcoin/index"><img src="/images/icon-grafico.png" alt="" width="250px" height="250px" /></a>

            <p>Ir a la grafica de los precios actuales BTC</p>
            </br>
            <br/>
        </td>
        <td>
            <a href="bitcoin/consulta"><img src="/images/shop3-512.png" width="250px" height="250px"></a>
            <p>Consulte su saldo BTC-USD</p>
        </td>
    <div class="text-success" id='result'>
        @if(Session::has('message'))
        {{Session::get('message')}}
        @endif
    </div>
    <td>
        <br/>

        <a href="bitcoin/update"><img src="/images/btcdolar.jpeg" ></a>
        <p>Convertir de USD a BTC..Actualice sus bitcoins!!!</p>
    </td>


</tr>
</table>



@endsection
