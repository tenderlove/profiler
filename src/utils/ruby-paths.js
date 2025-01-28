export function rubyGemDownloadRecipe(parsedFile) {
  const { gem, path } = parsedFile;
  return {
    type: 'CORS_ENABLED_SINGLE_FILE',
    url: `https://gems.vernier.prof/${gem}/${path}`
  };
}

export function normalPathCatchall(parsedFile) {
  return { type: 'NO_KNOWN_CORS_URL' };
}
