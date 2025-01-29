export async function tryLoadRubyHooks() {
    try {
        const context = require.context('./', false, /ruby-custom-hooks\.js$/);
        const hookModule = context('./ruby-custom-hooks.js');

        if (hookModule) {
          return {
              rubyGemDownloadRecipe: hookModule.rubyGemDownloadRecipe,
              normalPathCatchall: hookModule.normalPathCatchall
          };
        } else {
          return null;
        }
    } catch (error) {
        // no hooks were defined, the default behaviour will be used
    }
    return null;
}
