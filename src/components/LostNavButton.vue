<template>
    <div class="nav-button">
        <h2>{{NavText}}</h2>
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
    name: "LostNavButton",
    props: {
        NavText: String
    }
})
</script>

<style scoped>
    .nav-button{
        color: var(--tertiary-color);
        background-color: rgba(0,0,0,0);
        transition: 200ms cubic-bezier(0.165, 0.84, 0.44, 1);
    }
    .nav-button:hover{

        transition: 200ms cubic-bezier(0.165, 0.84, 0.44, 1);
        background-color: rgba(69, 162, 158,0.3);
    }
</style>