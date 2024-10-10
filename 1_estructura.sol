// SPDX-License-Identifier: GPL-3.0

//Version
pragma solidity >=0.7.0 <0.9.0;

//Siempre apuntar a no mas de 2 versiones, mientras mas especifico mejor y no a la ultima

//Nombre del contrato

contract ContadorVisitas {
    //Variables
    uint public visitas;
    address implementador;

    //Constructor
    constructor(uint valorInicial) {
        visitas = valorInicial;
        implementador = msg.sender;
    }

    //Funciones
    function incrementarVisitas () soloImplementador public {
        visitas++;
    }

    //Modificadores
    modifier soloImplementador() {
        require(msg.sender == implementador, "La cuenta no implemento el contrato");
        _;
        //El guion bajo representa cuando se va a correr el modificador si antes o despúes
    }
}

