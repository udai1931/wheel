# For executing this script, run the following from your terminal:
# curl -s -L "https://raw.githubusercontent.com/bigbinary/neetoUI/master/.scripts/sync_with_neetoUI.sh" | bash
yarn remove babel-eslint 2> /dev/null
yarn add -D @babel/eslint-parser
yarn add -D prettier
yarn add -D eslint \
eslint-plugin-react-hooks@4.2.1-alpha-13455d26d-20211104 \
eslint-plugin-import \
eslint-config-prettier \
eslint-plugin-prettier \
eslint-plugin-json \
eslint-plugin-react \
eslint-plugin-promise \
eslint-plugin-jam3 \
eslint-plugin-cypress \
eslint-plugin-unused-imports \
prettier-plugin-tailwindcss

raw_base_url="https://raw.githubusercontent.com/bigbinary/neetoUI/master"
declare -a configs=(
  ".eslintrc.js"
  ".eslintignore"
  ".eslint-rules/helpers/index.js"
  ".eslint-rules/imports/enforced.js"
  ".eslint-rules/imports/order.js"
  ".eslint-rules/globals.js"
  ".eslint-rules/overrides.js"
  ".eslint-rules/promise.js"
  ".eslint-rules/react.js"
  ".rubocop.yml"
  ".prettierrc.js"
  ".editorconfig"
  ".vscode/extensions.json"
  ".vscode/settings.json"
  ".husky/helpers/lint_staged.sh"
  ".husky/helpers/prevent_pushing_to_master.sh"
  ".husky/pre-commit"
  ".husky/pre-push"
  "cypress-tests/.eslintrc.js"
  ".semaphore/commands/run_eslint_on_modified_files.sh"
  ".node-version"
  ".nvmrc"
  ".ruby-version"
  ".erb-lint.yml"
  "bin/bundle"
  "bin/rails"
  "bin/rake"
  "bin/setup"
  "bin/spring"
  "bin/update"
  "bin/webpack"
  "bin/webpack-dev-server"
  "bin/yarn"
)

for config in "${configs[@]}"; do
  echo "Downloading ${config}..."
  curl --create-dirs -o "${config}" "${raw_base_url}/${config}"
done
