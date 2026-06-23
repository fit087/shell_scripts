# Tutorial Intermediário de VIM – Reference Card

**Cartão de referência rápida** para usuários intermediários. Foco em comandos práticos, navegação avançada, macros, busca e configuração diária.

## Visão Geral

- Modo Normal: `Esc`
- Salvar: `:w`
- Sair: `:q` / `:q!` / `:wq`
- Ajuda: `:help <comando>`

## Abertura de Arquivos

- Normal: `vim arquivo.txt`
- Somente leitura: `vim -R arquivo.txt` ou `view arquivo.txt`
- Arquivos grandes: `vim -u NONE -n arquivo.log` (desativa plugins e swap)

## Splits e Tabs

### Splits
- Horizontal: `:split` ou `:sp` / `Ctrl+w s`
- Vertical: `:vsplit` ou `:vs` / `Ctrl+w v`
- Navegar: `Ctrl+w` + `h/j/k/l`
- Fechar split atual: `Ctrl+w c`
- Redimensionar: `Ctrl+w` + `>` / `<` / `+` / `-`

### Tabs
- Nova tab: `:tabnew` ou `:tabe arquivo`
- Próxima tab: `gt`
- Tab anterior: `gT`
- Fechar tab: `:tabc`
- Ir para tab N: `Ngt`

## Integração com Shell

- Suspender VIM: `Ctrl+z`
- Retomar: `fg` (no terminal)
- Executar comando shell: `:!ls` ou `:sh`

## Macros

- Gravar macro no registro `a`: `qa` ... `q`
- Executar macro `a`: `@a`
- Repetir última macro: `@@`
- Executar N vezes: `10@a`
- Aplicar em linhas: `:%norm @a`

**Exemplos úteis:**
- Adicionar `;` no final da linha: `qaA;<Esc>q`

## Busca e Substituição

- Busca forward: `/padrão`
- Busca backward: `?padrão`
- Próximo: `n` / `N`
- Palavra sob cursor: `*` / `#`

### Substituição
- Na linha atual: `:s/antigo/novo/g`
- Em todo arquivo: `:%s/antigo/novo/g`
- Com confirmação: `:%s/antigo/novo/gc`

**Exemplos regex práticos:**
- `:%s/\s\+$//g` → remove espaços no final das linhas
- `:%s/\(\d\+\)/[\1]/g` → coloca colchetes em números
- `:%s/^/• /` → adiciona bullet em todas linhas

## Registros e Clipboard

- Copiar para clipboard do sistema: `"+y` (visual) ou `"+yy`
- Colar do clipboard: `"+p`
- Ver registros: `:reg`
- Usar registro `a`: `"ap`

## Navegação Rápida

- Início/fim linha: `0` / `$`
- Início/fim arquivo: `gg` / `G`
- Page Up/Down: `Ctrl+u` / `Ctrl+d` (meia tela) | `Ctrl+b` / `Ctrl+f`
- Ir para linha N: `Ngg` ou `:N`

## Configurações Recomendadas (`~/.vimrc`)

```vim
syntax on
set number relativenumber
set ignorecase smartcase
set expandtab shiftwidth=4 tabstop=4
set mouse=a
set wildmenu
set showcmd
set incsearch
set hlsearch
set laststatus=2
set background=dark
colorscheme desert
```


Gerenciador de Plugins: vim-plug
Instalação
```Bash
Bashcurl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Uso básico em ~/.vimrc
```.vimrc
vimcall plug#begin()
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
call plug#end()
```

- Instalar: :PlugInstall
- Atualizar: :PlugUpdate
- Limpar: :PlugClean

Plugins Recomendados

- NERDTree: Navegador de arquivos em árvore
- nnoremap <C-n> :NERDTreeToggle<CR>
- vim-airline: Barra de status bonita
- vim-fugitive: Comandos Git (:Gstatus, :Gdiff, :Gblame)
- CtrlP ou fzf.vim: Busca fuzzy de arquivos
- vim-surround: Editar surroundings (ysiw", ds", cs"')
- vim-commentary: Comentar/descomentar (gcc)
- gruvbox ou dracula: Temas bonitos
