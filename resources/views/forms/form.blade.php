

<form class="form-horizontal" role="form" method="POST" action="{{ url('/form/coin') }}">
    <div class="form-group">
        <label for="email">Ingrese su dirección de E-mail</label>
        <input type="email" class="form-control" id="email" placeholder="Introduzca su E-mail">
    </div>
    <div class="form-group">
        <label for="password">Ingrese su Clave</label>
        <input type="password" class="form-control" id="password" placeholder="Introduzca su clave">
    </div>
    <div class="form-group">
        <label for="text">Ingrese su monto en Bitcoins</label>
        <input type="text" class="form-control" id="text" placeholder="Introduzca su monto en bitcoins">
    </div>
    <button type="submit" class="btn btn-primary">
        Comprar
    </button>
</form>