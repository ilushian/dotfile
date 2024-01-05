dir=$(pwd)
echo $dir/$1
npx create-react-app $1
cd $dir/$1
npm install axios react-router-dom styled-components @mui/icons-material @mui/material @emotion/styled @emotion/react
echo "done!"+"(>_<);"