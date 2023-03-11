<template>
  <!-- <h1>Watchers</h1> -->
  <div class="search">
    <input type="search" placeholder="type something..." v-model="input" />
  </div>
  <div>
    <table>
      <tr>
        <th>Name</th>
        <th>Username</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Website</th>
      </tr>
      <tr v-for="user of users" :key="user.id">
        <td>{{ user.name }}</td>
        <td>{{ user.username }}</td>
        <td>{{ user.email }}</td>
        <td>{{ user.phone }}</td>
        <td>{{ user.website }}</td>
      </tr>
    </table>
  </div>
</template>

<script>
export default {
  data: () => ({
    input: "",
    users: [],
  }),
  watch: {
    input: {
      handler(value) {
        fetch("https://jsonplaceholder.typicode.com/users")
          .then((response) => response.json())
          .then((json) => {
            this.users = json.filter((user) => {
              return user.name.toLowerCase().includes(value.toLowerCase());
            });
          });
      },
      immediate: true,
    },
  },
};
</script>

<style scoped>
input {
  border-radius: 0;
  padding: 0.5rem;
  width: 100%;
  border: none;
  border-bottom: 2px solid #6b1f89;
  background-color: #f5f5f556;
  color: #6b1f89;
}

.search {
  margin-bottom: 1rem;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th,
td {
  text-align: left;
  padding: 8px;
  border: 2px solid #ddd;
}

::placeholder {
  color: #8742a2;
}
</style>
