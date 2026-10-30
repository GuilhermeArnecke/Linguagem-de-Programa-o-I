<template>
  <q-layout view="hHh LpR fFf">

    <q-header elevated class="bg-primary text-white">
      <q-toolbar>
        <q-btn dense flat round icon="menu" @click="toggleLeftDrawer" />

        <q-toolbar-title>
          EriveltonERP PRO Plus Gold
        </q-toolbar-title>
      </q-toolbar>
    </q-header>

    <q-drawer v-model="leftDrawerOpen" side="left" behavior="mobile" elevated>
      <q-list>
        <q-item v-for="(menu, i) in menus" :key="i" clickable :to="menu.url">
          <q-item-section avatar>
            <q-icon :name="menu.icon"></q-icon>
          </q-item-section>
          <q-item-section> {{ menu.label }} </q-item-section>
        </q-item>
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>

    <q-footer reveal bordered class="bg-grey-8 text-white">
      <q-toolbar>
        <q-toolbar-title>
          <q-avatar>
            <img alt="Quasar logo" src="/logo/logo-mono-white.svg">
          </q-avatar>
          <div>Title</div>
        </q-toolbar-title>
      </q-toolbar>
    </q-footer>

  </q-layout>
</template>

<script setup>
import { ref } from 'vue'

const menus = ref([
  { label: 'Home', url: '/', icon: 'mdi-home'},
  { label: 'Erivelton', url: 'Erivelton', icon: 'mdi-file-multiple'}
])

const leftDrawerOpen = ref(false)
function toggleLeftDrawer () {
  leftDrawerOpen.value = !leftDrawerOpen.value
}
</script>
