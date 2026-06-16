# 🗄️ Estudos de Banco de Dados com SQL

Este arquivo foi criado para registrar meus aprendizados práticos sobre bancos de dados relacionais e a linguagem SQL, utilizando o **SQLite**.

---

## ❓ Perguntas e Conceitos Fundamentais

### 1. O que é SQL e para que serve?
SQL significa *Structured Query Language* (Linguagem de Consulta Estruturada). É a linguagem padrão utilizada para conversar com bancos de dados relacionais. Com ela, podemos criar tabelas, inserir informações, atualizar dados e fazer buscas (consultas).

### 2. Qual a diferença entre SQL e SQLite?
* **SQL:** É a linguagem que a gente usa para escrever as ordens (os comandos).
* **SQLite:** É o programa (o motor de banco de dados) que entende essa linguagem. Ele é super leve, não precisa de instalação complexa e guarda tudo em um arquivo só, sendo perfeito para usar junto com o Python.

---

## 💻 Códigos Práticos (Mão na Massa)

Abaixo estão os comandos SQL que aprendi para criar um banco de dados de exemplo (um sistema simples de alunos):

### 1. Criando uma Tabela
Este comando cria uma tabela chamada `alunos` com colunas para ID, Nome e Curso:

```sql
CREATE TABLE alunos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    curso TEXT NOT NULL
);
