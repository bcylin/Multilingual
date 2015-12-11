task default: :start
task start: "react:start"

namespace :react do
  desc "Start React Native development server"
  task :start do
    sh %Q(JS_DIR=`pwd`/ReactComponent; cd node_modules/react-native; npm run start -- --root $JS_DIR)
  end
end
