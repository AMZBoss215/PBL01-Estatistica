# Análise de Desempenho Acadêmico - Disciplina de Estatística

## Dados obtidos

### 1. Perfil do Aluno e Satisfação
* **Aluno Típico:** É um jovem adulto com idade média de **23 anos**, mas com uma forte presença de calouros de **18 anos** (moda). 
* **Trabalho:** A maioria da turma (**58,33%**) concilia os estudos com atividade profissional.
* **Satisfação:** O nível geral de satisfação concentra-se na nota **3**, conforme o `barplot_satisfacao.png`, indicando um sentimento neutro em relação ao curso.

### 2. Distribuição de Notas e Risco (Sturges e Ogiva)
* **Distribuição:** As notas foram organizadas em **$k$** classes seguindo a **Regra de Sturges**, resultando no histograma de frequências absolutas.
* **Zona de Risco:** A análise da **Ogiva de Galton** revela que **46%** dos alunos estão abaixo da média 6.0. Esse dado é alarmante e serve como base para as propostas de intervenção.

### 3. Impacto do Trabalho e Eficácia da Monitoria
* **Trabalho:** O `boxplot_trabalha.png` e as médias calculadas (**6,12** para quem trabalha vs **6,29** para quem não trabalha) mostram que o emprego gera uma queda sutil, mas não determinante, no desempenho.
* **Monitoria:** O `boxplot_monitoria.png` confirma que a ferramenta é eficaz: usuários da monitoria possuem média **6,28**, superior aos **6,15** dos não usuários. O problema central é a baixa adesão (**34,17%**).

### 4. Propostas Práticas à Coordenação
* **Monitoria Híbrida/Flexível:** Criar horários de monitoria remota ou assíncrona para atender aos **58,33%** que trabalham e possivelmente não conseguem comparecer aos horários convencionais.
* **Plano de Engajamento Ativo:** Implementar um sistema de alerta para os **46%** em zona de risco (identificados via Ogiva), incentivando a participação na monitoria logo após a primeira avaliação.

## Propostas

### 1. Flexibilização e Digitalização da Monitoria (Foco no Aluno Trabalhador)
* **Justificativa baseada nos dados:** O cruzamento mostrou que **58,33%** da turma trabalha e que a média de notas desses alunos (**6,12**) é inferior à de quem não trabalha (**6,29**). Além disso, a adesão à monitoria é baixa (**34,17%**).
* **A Proposta:** Implementar **monitorias em regime híbrido ou assíncrono**. Isso inclui a criação de um repositório de vídeos curtos com a resolução de exercícios (estilo "pílulas de conhecimento") e plantões de dúvida via Discord ou Google Meet em horários alternativos (pós-21h ou fins de semana). 
* **Objetivo:** Eliminar a barreira do "choque de horário" para os 58% que estão no mercado de trabalho.

### 2. Programa de "Alerta Precoce" e Engajamento (Foco na Zona de Risco)
* **Justificativa baseada nos dados:** A análise da **Ogiva** e do percentual de risco revelou que **46%** da turma está abaixo da média 6,0. A eficácia da monitoria foi comprovada (**6,28** de média para quem usa vs **6,15** para quem não usa), mas ela não está chegando em quem precisa.
* **A Proposta:** Criar uma campanha de engajamento direcionada. A coordenação deve enviar um comunicado personalizado aos alunos que estão no primeiro quartil de notas (os 25% com menores notas, que identificamos no `summary`), convidando-os formalmente para grupos de estudo liderados pelos monitores.
* **Objetivo:** Transformar a monitoria de algo "passivo" (esperar o aluno ir) em algo "ativo" (buscar o aluno em risco), focando especialmente nos alunos de **18 anos** (nossa **Moda**), que podem estar sentindo mais o impacto da transição acadêmica.



---

### Dica para o Relatório Final (ONLYOFFICE):
Ao escrever essas propostas, use frases como: 
* *"Dado que a análise estatística apontou que mais da metade da turma (58,33%) exerce atividade remunerada..."*
* *"Considerando que a monitoria elevou a média dos usuários para 6,28, propõe-se..."*
