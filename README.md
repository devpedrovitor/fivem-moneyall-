# fivem-moneyall-

Script para FiveM com QBCore que permite dar dinheiro para todos os jogadores online simultaneamente via comando admin.

---

## 📋 Dependências

- [qb-core](https://github.com/qbcore-framework/qb-core)

---

## 📁 Estrutura

```
qb-moneyall/
├── fxmanifest.lua
├── client/
│   └── client.lua
├── server/
│   └── server.lua
└── README.md
```

---

## ⚙️ Instalação

1. Baixe o resource e coloque em `resources/[qb]/qb-moneyall/`
2. Adicione no `server.cfg`:
```cfg
ensure qb-moneyall
```
3. Para restringir o comando apenas para admins adicione também:
```cfg
add_ace group.admin command.moneyall allow
```
4. Reinicie o servidor

---

## 🎮 Como usar

```
/moneyall [valor]
```

| Parâmetro | Descrição | Padrão |
|---|---|---|
| valor | Quantidade de dinheiro a distribuir | 1000 |

### Exemplos
```
/moneyall 500    → Dá $500 para todos
/moneyall 10000  → Dá $10.000 para todos
/moneyall        → Dá $1.000 para todos (valor padrão)
```

---

## 🔧 Como funciona

```
1. Admin digita /moneyall [valor]
2. Servidor busca todos os jogadores online
3. Para cada jogador adiciona o valor em cash
4. Jogador recebe notificação verde na tela
```

---