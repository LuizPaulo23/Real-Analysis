#' @title Simulanando Convergência - Número 03 da Lista 02
#' @details Dê um exemplo de uma sequência $(a_{n})$ onde $a_{n} < 0$, $\forall n \in \mathbb{N}$ e $(a_{n}) \to 0$
#' @author Luiz Paulo Tavares Gonçalves 

base::rm(list = ls())
pacman::p_load(ggplot2)

# Functions \* 

get_function_seq <- function(n){
  
  an = base::data.frame(n = seq(1:n), 
                        seq = (-1 / seq(1:n)))
  
  return(an)
}

# Chamando Função \* 

data_plot = get_function_seq(n = 1000)

# Visualizando \* 

ggplot2::ggplot(data = data_plot)+
         aes(x = n, y = seq)+
         geom_line()+
         labs(title = expression(a[n] %->% 0), 
              y = "Sequência", x = "")+
         theme_minimal()

