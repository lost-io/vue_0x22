<template>
  <LostHeader/>
  <footer class="grid-container"> 
  <div class="gs-1-6">
    <p>
      Hello World
    </p>
  </div>
  <div class="gs-6-12">
    <p>
      Foo
     </p>
    <p>
     bar
    </p>
    </div>
  </footer>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import HelloWorld from './components/HelloWorld.vue';
import LostHeader from './components/LostHeader.vue';
export default defineComponent({
  name: 'App',
  components: {
    LostHeader
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

footer {
  background:var(--alt-bg);
  margin-top:auto;
}

.grid-container{
  display: grid;
  grid-template: repeat(12,1fr);
}



.gs-1-12{
  grid-column: 1/6;
}
.gs-6-12{
  grid-column: 6/12;
}



</style>
