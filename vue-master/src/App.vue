<template>
  <div id="app">
    <label>{{title}}</label>
    <input type="text" v-model="newItem" @keyup.enter="addNew"/>
    <ul v-for="item in items">
      <li>{{item.label}}</li>
    </ul>
  </div>
</template>

<script>
  export default {
    name: 'App',
    data: function () {
      return {
        title: 'this is todo list',
        items: [],
        newItem: ''
      }
    },
    watch: {

    },
    methods: {
      addNew: function () {
        this.items.push({label: this.newItem, flag: false})
        this.newItem = ''
      }
    }
  }

</script>

<style>
  #app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    margin-top: 60px;
  }
</style>
