<template>
    <header>
        <div>
              <img alt="Vue logo" src="../assets/logo.png">
        </div>
            <nav>
                <LostNavButton NavText="Option_01"/>
                <LostNavButton NavText="Option_02"/>
                <LostNavButton NavText="Option_03"/>
                <LostNavButton NavText="Option_04"/>
            </nav>
    </header>    
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import LostNavButton from './LostNavButton.vue';
export default defineComponent({
    name: 'LostHeader',
      components: {
    LostNavButton
  },
    setup() {
        
    },
})
</script>

<style scoped>
    header{
        display: grid;
        grid-template-columns: minmax(2em, 15%) 0.5fr;
    }

    nav {
        display: grid;
        grid-gap: 0.1rem;
        color: var(--primary-color);
            grid-template-columns: repeat(auto-fit, minmax(5em, 1fr));
    }
</style>