const routes = [
  {
    //Rota do que não tem quase nada na tela
    path: '/',
    component: () => import('../layouts/InitialLayout.vue'),
    children: [
      {
        path: '',
        component: () => import('../pages/loginPage.vue'),
      },
      {
        path: '/cadastro',
        component: () => import('../pages/registerPage.vue'),
      },
      {
        path: '/selecao-dificuldade',
        component: () => import('../pages/dificultyPage.vue'),
      },
    ],
  },

  {
    //Rota do jogo (verdadeiramente chamado Erivelton Adventures 2)
    path: '/game',
    component: () => import('../layouts/GameLayout.vue'),
  },

  {
    //Aqui é se der pau (erro)... 404 not found
    path: '/:catchAll(.*)*',
    component: () => import('../pages/ErrorNotFound.vue'),
  },
]

export default routes
