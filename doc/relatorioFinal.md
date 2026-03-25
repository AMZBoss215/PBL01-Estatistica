# 📊 Análise de Desempenho Acadêmico: Disciplina de Estatística Aplicada à Engenharia

Este projeto apresenta uma Análise Exploratória de Dados (AED) realizada para a coordenação dos cursos de tecnologia e engenharia. O objetivo é diagnosticar os fatores que contribuem para os altos índices de reprovação na disciplina de Estatística e propor soluções baseadas em evidências.

## 📑 Situação-Problema

A coordenação notou um padrão de reprovação histórica e baixa adesão à monitoria. Havia uma suspeita de que o trabalho/estágio impactasse o desempenho, mas faltavam dados concretos. Como analistas, processamos uma amostra de **120 alunos** para responder a questões estratégicas.

## 📈 Diagnóstico dos Dados

### 1. Perfil do Aluno e Satisfação

-   **Idade:** A turma possui média de **23 anos**, mas a moda é de **18 anos**, indicando uma forte presença de calouros.
-   **Trabalho:** **58,33%** dos alunos conciliam estudos com atividade profissional.
-   **Satisfação:** A nota predominante é **3**, revelando neutralidade em relação ao curso.

### 2. Distribuição e Zona de Risco

-   **Metodologia:** Aplicamos a **Regra de Sturges** para definir as classes do histograma e a **Ogiva de Galton** para o percentual acumulado.
-   **Risco Real:** Identificamos que **46%** da turma está abaixo da média 6.0.

### 3. Fatores de Desempenho

-   **Trabalho vs. Nota:** Alunos que trabalham possuem média **6,12**, contra **6,29** dos que não trabalham — uma diferença sutil de 0,17 pontos.
-   **Eficácia da Monitoria:** Alunos que utilizam a monitoria apresentam média superior (**6,28**) em relação aos que não utilizam (**6,15**). Contudo, a adesão é de apenas **34,17%**.

## 💡 Propostas Práticas

### 1. Monitoria Híbrida e Assíncrona

-   **Foco:** Alunos trabalhadores (58,33% da turma).
-   **Ação:** Criação de repositórios de vídeo e plantões via Discord/Meet em horários alternativos para mitigar o choque de horários.

### 2. Programa de Engajamento Ativo

-   **Foco:** Alunos em zona de risco (46% da turma) e calouros (moda de 18 anos).
-   **Ação:** Busca ativa dos alunos no primeiro quartil de notas, convidando-os formalmente para grupos de estudo.

------------------------------------------------------------------------

### 🛠️ Tecnologias Utilizadas

-   **Linguagem:** R
-   **Ambiente:** RStudio
-   **Documentação:** Markdown
