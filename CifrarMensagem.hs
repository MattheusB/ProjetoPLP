main :: IO ()
main = do
  let tabela = ([["Y","Q","D","L","G"],
                  ["M","J","X","F","U"],
                  ["V","W","C","P","B"],
                  ["O","S","K","R","E"],
                  ["T","H","N","A","I"]])
  mostrarMenuDeOpcoes
  opcao <- getLine
  -- let value = opcaoSelecionada opcao tabela -- usar isso quando descobrir como colocar tipo genérico
  print "so pra nao dar erro"


mostrarMenuDeOpcoes :: IO()
mostrarMenuDeOpcoes = do 
  putStrLn ("Escolha uma das opcoes abaixo:\n")
  putStrLn ("1. Escolher uma tabela de cifra nova")
  putStrLn ("2. Introduzir uma mensagem para cifrar")
  putStrLn ("3. Ver a mensagem cifrada")
  putStrLn ("4. Decifrar a mensagem")
  putStrLn ("5. Ver o alfabeto")
  putStrLn ("6. Terminar\n")
  putStrLn ("Opcao: ")
  
opcaoSelecionada :: String -> [[String]] -> String -- Verificar como colocar tipo genérico
opcaoSelecionada opcao tabela 
                       | (opcao == "1") = "Opcao 1"
                       | (opcao == "2") = "Opcao 2"
                       | (opcao == "3") = "Opcao 3"
                       | (opcao == "4") = "Opcao 4"
                       | (opcao == "5") = "Opcao 5"
                       | (opcao == "6") = "Programa encerrado."
                       | otherwise = "Digite uma opcao valida"


mostrarTabela :: [[String]] -> [[String]]
mostrarTabela tabela = take 5 tabela

estaNaMesmaLinha :: [[String]] -> String -> String -> Bool
estaNaMesmaLinha tabela primeiraLetra segundaLetra = if (getLinhaNaMatriz tabela primeiraLetra 4) == (getLinhaNaMatriz tabela segundaLetra 4)
                                                    then True else False

getLinhaNaMatriz :: [[String]] -> String -> Int -> Int
getLinhaNaMatriz tabela letra 0 = if elem letra (tabela !! 0) then 0 else -1
getLinhaNaMatriz tabela letra indice = if elem letra (tabela !! indice) then indice 
                                       else getLinhaNaMatriz tabela letra (indice-1) -- Indice = indice da ultima linha da tabela
