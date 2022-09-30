# CryptoServiceChallenge

Funcionalidad API

La API de coinmarketcap nos permite obtener las distintas cotizaciones de criptomonedas y convertirlas a la moneda deseada

Para poder utilizarla necesitamos primero la API Key, que se obtiene registrandose en el sitio de Coinmarketcap

Obtenida la API Key, podemos empezar a realizar las solicitudes a los endopoints deseados creando, como en este caso, una coleccion de querys en postman

La URL que usaremos en nuestra app será la siguiente:

"https://sandbox-api.coinmarketcap.com/v1/cryptocurrency/listings/latest"

A la cual le podremos agregar los parametros a obtener según la moneda que querramos visualizar, esto parametros son:

Symbol: Criptomenda de la cual queremos saber la cotizacion
Convert: Moneda en la cual queremos ver la conversion de la criptomoneda
Amount: Monto de cryptomoneda a convertir

Con esta consulta la query nos devolverá un JSON con los siguientes datos:

{
    "status": {
        "timestamp": "2022-09-30T04:47:24.947Z",
        "error_code": 0,
        "error_message": null,
        "elapsed": 1,
        "credit_count": 1,
        "notice": null
    },
    "data": {
        "USD": {
            "symbol": "USD",
            "id": "k0zz7m51uxq",
            "name": "zr0q9cjpe7a",
            "amount": 1,
            "last_updated": "2022-09-30T04:47:24.947Z",
            "quote": {
                "BTC": {
                    "price": 4451,
                    "last_updated": "2022-09-30T04:47:24.947Z"
                }
            }
        }
    }
}
