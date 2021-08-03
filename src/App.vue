<template>
  <LostHeader/>
  <LostFooter :credits="'lost-io'" :socials="socials" :contactInfo="'lost-io@email'"/>
</template>

<script lang="ts">
interface SocialsData {
  id: number
  link: string
  name: string
}
import { defineComponent } from 'vue';
import HelloWorld from './components/HelloWorld.vue';
import LostHeader from './components/LostHeader.vue';
import LostFooter from './components/LostFooter.vue';
export default defineComponent({
  name: 'App',
  components: {
    LostHeader,
    LostFooter
  },
  data() {
    return {
      socials: {}
    }
  },
  created() {
    const data = [
    {
      id: 1,
      link: '#',
      name: 'linked-in'
    },
    {
      id: 2,
      link: "#",
      name: "github"
    },
    {
      id: 3,
      link: "#",
      name: "twitter"
    },
    {
      id: 4,
      link: "#",
      name: "facebook"
    }
  ]
  this.socials = data 
  } 

});

</script>

<style>

:root{
  --primary-color: #66FCF1;
  --secondary-color: #45A29E;
  --tertiary-color: #C5C6C7;
  --bg-color: #0B0C10;
  --alt-bg: #1F2833;
}
body{
  margin: 0;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: var(--tertiary-color);
}

body {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  background-color: var(--bg-color);
}
</style>
