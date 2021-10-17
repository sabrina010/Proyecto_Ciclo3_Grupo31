<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <title>Hello, world!</title>
    </head>
    <body>
        <div class="row">
            <div class="card col-md-4">
                <div class="card-body">
                    <h5 class="card-title">Clientes</h5>
                    <h6 class="card-subtitle mb-2 text-muted">En este panel podras gestionar los datos de los clientes</h6>
                    <div>
                        <form action="Controlador?menu=Clientes" method="POST">
                            <div class="form-group">
                                <label>Documento</label>
                                <input type="number" class="form-control" name="txtdocumento" value="${clienteSeleccionado.getDocumento()}">
                                <small class="form-text text-muted">Ingrese El No de documento sin espacios ni caracteres especiales</small>
                            </div>
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" class="form-control" name="txtnombre" value="${clienteSeleccionado.getNombre()}">
                            </div>
                            <div class="form-group">
                                <label>Correo</label>
                                <input type="text" class="form-control" name="txtcorreo" value="${clienteSeleccionado.getCorreo()}">
                            </div>
                            <div class="form-group">
                                <label>Direccion</label>
                                <input type="text" class="form-control" name="txtdireccion" value="${clienteSeleccionado.getDireccion()}">
                            </div>
                            <div class="form-group">
                                <label>Telefono</label>
                                <input type="number" class="form-control" name="txttelefono" value="${clienteSeleccionado.getTelefono()}">
                            </div>
                            <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                            <input type="submit" class="btn btn-success" name="accion" value="Actualizar" >
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">id</th>
                            <th scope="col">Documento</th>
                            <th scope="col">Nombres</th>
                            <th scope="col">Correo</th>
                            <th scope="col">Direccion</th>
                            <th scope="col">Telefono</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="cliente" items="${clientes}">

                            <tr>
                                <th scope="row">${cliente.getId()}</th>
                                <td>${cliente.getDocumento()}</td>
                                <td>${cliente.getNombre()}</td>
                                <td>${cliente.getCorreo()}</td>
                                <td>${cliente.getDireccion()}</td>
                                <td>${cliente.getTelefono()}</td>
                                <td>
                                    <a class="btn btn-warning" href="Controlador?menu=Clientes&accion=Cargar&id=${cliente.getId()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Clientes&accion=Eliminar&id=${cliente.getId()}">Eliminar</a>
                                </td>

                            </tr>
                        </c:forEach>


                    </tbody>
                </table>
            </div>

            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>