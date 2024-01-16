<h1>NeoChad</h1>
<p>NeoChad is an base ide like configuration for NeoVim</p>

<h2>
   Showcase
   <h2>
      <div align="center">
         <h2></h2>
         <img src="Neovim.png" alt="" />
         <p></p>
         <img src="NeoVim2.png" alt="" />
         <p></p>
         <img src="NeoVim3.png" alt="" />
         <p></p>
         <img src="NeoVim4.png" alt="" />
         <p></p>
         <img src="NeoVim5.png" alt="" />

   </h2>
   <h2>Features</h2>
   <p>* Lightweight but powerfull</p>
   <p>*Easy configure as every config file has comments</p>
   <p>* Easy to setup Lsp for new language</p>
   <p>* Supports lowend devices</p>
   <p>* Easy to add or delete plugins</p>
   <p>* Fast startup time</p>
   <p>* Plugins are loaded only when needed</p>
   <p>* Awesome preinstalled themes</p>
   <h2>Prerequisites </h2>
   <p>* Rigrep</p>
   <p>* Mingw is must for windows</p>
   <p>* Gnuwin32 is must for windows</p>
   <p>* Nerd font -optional</p>

<h2>Installation</h2>
 <h3>Windows</h3>
    
    git clone https://github.com/bloodlust-Hisoka/Neochad.git $HOME/\AppData\Local\nvim --depth && nvim

<h3>Linux or Mac</h3>

    git clone https://github.com/bloodlust-Hisoka/Neochad.git .config/nvim --depth && nvim
    
<h2>Plugins</h2>
<h3>Adding plugins</h3>
<p>Add file in plugins folder in configuration folder and return table like this</p>
<h4>.config/nvim/lua/User/plugins/example.lua</h4>
```lua

return{
  'example/example.nvim', -- plugin url
  config =function()
  --plugin configuration here
  end
  }
```
  


