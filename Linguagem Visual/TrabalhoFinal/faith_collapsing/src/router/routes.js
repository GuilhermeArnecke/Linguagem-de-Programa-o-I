const routes = [
  {
    //Rotinha dos login Eribolinha
    path: '/',
    component: () => import('../layouts/MainLayout.vue'),
    children: [
      {
        path: '',
        component: () => import('../pages/loginPage.vue'),
      },
    ],
  },

  {
    //Essa merda é se der erro... 404 not found
    path: '/:catchAll(.*)*',
    component: () => import('../pages/ErrorNotFound.vue'),
  },
]

export default routes
