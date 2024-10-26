using System;
using System.ComponentModel;
using System.Net.Http;
using System.Reflection.Emit;


namespace Main
{
    internal class Program
    {

        class clsCalculator
        {

            private enum _enLastOperation { Add, Subtract, Multiply, Divide, Clear }

            private struct _stCalcultor
            { 
                public double Result;
                public double LastNumber;
                public _enLastOperation LastOperation;
            }

            private _stCalcultor _Calcultor;

            public clsCalculator()
            {
                _Calcultor.Result = 0;
                _Calcultor.LastNumber = 0;
                _Calcultor.LastOperation = _enLastOperation.Clear;
            }

            private void _PrintMessage(string Message)
            {
                Console.WriteLine(Message);
            }

            public void Add(double Value)
            {
                _Calcultor.Result += Value;
                _Calcultor.LastNumber = Value;
                _Calcultor.LastOperation = _enLastOperation.Add;
            }

            public void Subtract(double Value)
            {
                _Calcultor.Result -= Value;
                _Calcultor.LastNumber = Value;
                _Calcultor.LastOperation = _enLastOperation.Subtract;
            }

            public void Multiply(double Value)
            {
                _Calcultor.Result *= Value;
                _Calcultor.LastNumber = Value;
                _Calcultor.LastOperation = _enLastOperation.Multiply;
            }

            public void Divide(double Value)
            {
                if (Value != 0)
                    _Calcultor.Result /= Value;
                _Calcultor.LastNumber = Value;
                _Calcultor.LastOperation = _enLastOperation.Divide;
            }

            public void Clear()
            {
                _Calcultor.LastOperation = _enLastOperation.Clear;
                _Calcultor.Result = 0;
                _Calcultor.LastOperation = _enLastOperation.Clear;
            }

            public void PrintResult()
            {

                switch (_Calcultor.LastOperation)
                {
                    case _enLastOperation.Add:
                        {
                            _PrintMessage(string.Format("Result After Adding {0} Is : {1}", _Calcultor.LastNumber, _Calcultor.Result));
                            break;
                        }
                    case _enLastOperation.Subtract:
                        {
                            _PrintMessage(string.Format("Result After Subtacting {0} Is : {1}", _Calcultor.LastNumber, _Calcultor.Result));
                            break;
                        }
                    case _enLastOperation.Multiply:
                        {
                            _PrintMessage(string.Format("Result After Multiplying By {0} Is : {1}", _Calcultor.LastNumber, _Calcultor.Result));
                            break;
                        }
                    case _enLastOperation.Divide:
                        {
                            _PrintMessage(string.Format("Result After Dividing By {0} Is : {1}", _Calcultor.LastNumber, _Calcultor.Result));
                            break;
                        }
                    case _enLastOperation.Clear:
                        {
                            {
                                _PrintMessage("Result After Clear Is : " + _Calcultor.Result.ToString());
                                break;
                            }
                        }
                }

            }

        }

        static void Main(string[] args)
        {

            clsCalculator calculator = new clsCalculator();

            calculator.PrintResult();

            calculator.Add(10);
            calculator.PrintResult();

            calculator.Divide(0);
            calculator.PrintResult();

            calculator.Clear();
            calculator.PrintResult();

        }
    }
}

