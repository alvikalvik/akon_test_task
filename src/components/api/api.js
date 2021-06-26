import * as axios from 'axios';

const instance = axios.create({
    withCredentials: true,
    baseURL: 'http://localhost/akon_test_task/public',    
});

export const dbAPI = {
    requestEntireTableData(tableName) {           
        return instance.get(`db.php?tablename=${tableName}`)
            .then(response => {                
                return response.data
            });
    }
};