export default {
  data() {
    return {
      name: "",
      email: "",
      message: "",
    };
  },
  methods: {
    submitForm() {
      if (this.name && this.email && this.message) {
        this.name = "";
        this.email = "";
        this.message = "";
        alert("Form submitted!");
      } else {
        alert("Please fill all the fields!");
      }
    },
  },
};
