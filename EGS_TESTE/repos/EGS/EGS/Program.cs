using System;
using System.Security.Cryptography;

namespace EGS
{
    class Program
    {
        static void Main(string[] args)
        {
            double valor, result,desconto ;
            
            Console.WriteLine("Informe Aqui o Valor do Produto ");
            Console.WriteLine("--------------------------------");
            valor = (double)Convert.ToDecimal(Console.ReadLine());
            Console.WriteLine("\n");

            Console.WriteLine("O Produto Custava:" + valor);
            
            result = valor * 0.60;
            Console.WriteLine("Com  Desconto: " + result);

            desconto = valor - result;
            
            Console.WriteLine("Valor do descobto: " + desconto);
           
            Console.ReadKey();

        }
    }
}
