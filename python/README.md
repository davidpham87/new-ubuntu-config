# Python for data analysis or coding in general


The script install for ubuntu-linux the following packages (python 2 and 3):

+ [Scipy stack](http://www.scipy.org/) (pandas, numpy, ipython and all)
+ [Scikit](http://scikit-learn.org/stable/), for machine learning.
+ [Sphinx](http://sphinx-doc.org/) for documentation
+ [Jupyter](http://jupyter.org/) for interactive notbooks
+ [Jedi](http://jedi.jedidjah.ch/en/latest/) for emacs autocompletion
+ Emacs keybinding in jupyter notbooks: Insert the following code snipets
  inside
  > `~/.ipython/profile_default/static/custom/custom.js` 

```javascript
// register a callback when the IPython.notebook instance is created.
$([IPython.events]).on('app_initialized.NotebookApp', function(){
	function to(mode) {
		// this can be either 'vim' or 'emacs'
		var mode = mode || 'emacs';
		// first let's apply mode to all current cells
		function to_mode(c) { return c.code_mirror.setOption('keyMap', mode);};
		var cells = IPython.notebook.get_cells();
		if (cells != null) {
			cells.map(to_mode);
		}
		
		// apply the mode to future cells created
		IPython.Cell.options_default.cm_config.keyMap = mode;
	};
	require(["codemirror/keymap/emacs"],
			function (_) {
				if (IPython.notebook != undefined) {
					to('emacs');
				};
			});
});
```
