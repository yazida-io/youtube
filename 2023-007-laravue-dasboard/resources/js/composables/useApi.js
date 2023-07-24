import axios from "axios";

const axiosInstance = axios.create({
    baseURL: `${window.location.protocol}//${window.location.host}/api/`,
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
    }
});

export default function useApi() {
    const $get = (url, params = {}) =>  axiosInstance.get(url, params).then(response => response.data);

    const $post = (url, data = {}) => axiosInstance.post(url, data).then(response => response.data);

    const $put = (url, data = {}) =>  axiosInstance.put(url, data).then(response => response.data);

    const $delete = (url, data = {}) => axiosInstance.delete(url, data).then(response => response.data);

    return {$get, $post, $put, $delete}
}
