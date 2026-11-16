const routes = [
  {
    //Rota do que não é relacionado diretamente com a gameplay
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
        path: '/dificuldade',
        component: () => import('../pages/difficultyPage.vue'),
      },
    ],
  },

  {
    //Rota do jogo (verdadeiramente chamado Erivelton Adventures 2)
    path: '/game',
    component: () => import('../layouts/GameLayout.vue'),

    children: [
      {
        path: 'easy',
        component: () => import('../pages/easyPage.vue'),
      },
      {
        path: 'normal',
        component: () => import('../pages/normalPage.vue'),
      },
      {
        path: 'hard',
        component: () => import('../pages/hardPage.vue'),
      },
    ],
  },

  {
    //Aqui é se der pau (erro)... 404 not found
    path: '/:catchAll(.*)*',
    component: () => import('../pages/ErrorNotFound.vue'),
  },
]

export default routes
