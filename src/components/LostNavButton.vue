<template>
    <div @click="onClick()" class="nav-button">
        <h2>{{navtext}}</h2>
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
    name: "LostNavButton",
    props: {
        NavText: {
            type: String,
            defualt: "Option" 
        },
        ClickAction: {
            default: () => { console.log("Clicked")}
        },
    },
    data() {
        return {
            counter: 0,
            navtext: ""
        }
    },
    methods: {
        onClick(){
            this.counter++
            this.navtext = this.NavText + "_" + String(this.counter) 
        }
    }
    ,created() {
        this.navtext = this.NavText as string
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
        cursor: pointer;
        transition: 200ms cubic-bezier(0.165, 0.84, 0.44, 1);
        background-color: rgba(69, 162, 158,0.3);
    }
</style>