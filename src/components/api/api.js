import * as axios from 'axios';

const instance = axios.create({
    withCredentials: true,
    // baseURL: 'http://localhost/akon_test_task/public/',    
    baseURL: 'http://trgaz.com/akon',    
});

export const dbAPI = {
    requestEntireTableData(tableName) {           
        return instance.get(`db.php?tablename=${tableName}`)
            .then(response => {                
                return response.data
            });
    },

    makeSelection(tableName, channel1, channel2, channel3) {
        return instance.get(`db.php?tablename=${tableName}&channel1=${channel1}&channel2=${channel2}&channel3=${channel3}`)
            .then(response => {
                return response.data
            });
    }
};