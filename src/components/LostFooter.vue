<template>
     <footer> 
         <div>
            <h3>{{credits}}</h3>
            <p>{{contactInfo}}</p>
            <div class="pancake">
                <div :key="social.id" v-for="social in socials" class ="social-logo">
                    <a :href="social.link" :alt="social.name">{{social.name}}</a>
                 </div>
            </div>
         </div>
  </footer> 
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
    setup() {
        
    },
    props: {
        credits : String,
        contactInfo: String,
        socials: Array
    }
})
</script>

<style scoped>

footer{
    padding: 1em;
    color: var(--tertiary-color);
    background-color: var(--alt-bg);
}
.ram{
    display: grid;
    grid-gap: 0.1rem;
    grid-template-columns: repeat(auto-fit,minmax(20px, 4em));
}
.pancake{
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}
.pancake div{
    flex: 1 1 150px;
    flex: 0 1 150px;
    margin: 0.2rem;
}
.social-logo{
    border-radius: 50rem;
    text-align: center;
    background-color: var(--secondary-color);
}
.social-logo:hover{
    transform: translateY(-0.2em);
    transition: 200ms cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
a{
    text-decoration: none;
    color: inherit;
}
</style>