use emacs::{defun, Env, Result, Value};

// Emacs won't load the module without this.
emacs::plugin_is_GPL_compatible!();

// Register the initialization hook that Emacs will call when it loads the module.
#[emacs::module]
fn init(env: &Env) -> Result<Value<'_>> {
    env.message("eim finished loading!")
}

/// Get current input source id.
#[defun]
fn get_input_source() -> Result<String> {
    Ok(im::get_input_source())
}

/// Set input source.
#[defun]
fn set_input_source(language: String) -> Result<()> {
    Ok(im::set_input_source(&language))
}
