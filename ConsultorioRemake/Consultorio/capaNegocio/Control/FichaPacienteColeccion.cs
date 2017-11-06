﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace capaNegocio
{
    public class FichaPacienteColeccion
    {
        private static List<FichaPaciente> GenerarListado(List<capaDatos.Ficha_Paciente> fichaPacienteDALC) 
        {
            List<capaNegocio.FichaPaciente> fichasPacientes = new List<FichaPaciente>();
            foreach (capaDatos.Ficha_Paciente fp in fichaPacienteDALC)
            {
                capaNegocio.FichaPaciente ficha = new FichaPaciente();
                ficha.Id_ficha_paciente = fp.id_ficha_paciente;
                ficha.Fecha = (DateTime)fp.fecha;
                ficha.IdConsultorio = fp.Consultorio.id_consultorio;
                ficha.IdSecretaria = fp.Secretaria.id_secretaria;
                ficha.IdMedico = fp.Medico.id_Medico;
                ficha.IdEnfermera = fp.Enfermera.id_enfermera;
                ficha.IdPaciente = fp.Paciente.id_paciente;
                ficha.Peso = fp.peso;
                ficha.Estatura = fp.estatura;
                ficha.Imc = fp.imc;
                ficha.Temperatura = fp.temperatura;
                ficha.Sistonica = fp.sistonica;
                ficha.Distolica = fp.distolica;
                ficha.Pulsacion = fp.pulsacion;
                ficha.Diastolica = fp.diastolica;

                fichasPacientes.Add(ficha);
            }

            return fichasPacientes;
        }

        public List<FichaPaciente> ReadAll() {
            var fichaPaciente = CommonBC.ModeloConsultorio.Ficha_Paciente;
            return GenerarListado(fichaPaciente.ToList());
        }
    }
}