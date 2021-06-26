import "./App.css";
import { useEffect, useState } from "react";
import MainForm from "./components/MainForm/MainForm";
import SelectionResult from "./components/SelectionResult/SelectionResult";
import { dbAPI } from "./components/api/api";

function App() {
    const [isInitialised, setIsInitialised] = useState(false);
    const [isFetching, setIsFetching] = useState(false);
    const [signalsData, setSignalsData] = useState({});
    const [rangesData, setRangesData] = useState({});
    const [wiresData, setWiresData] = useState({});
    const [selectionResultData, setSelectionResultData] = useState([{}]);

    const signalsTableName = 'nomenclatures_table_1';
    const rangesTableName = 'nomenclatures_table_2';
    const wiresTableName = 'nomenclatures_table_3';
    

    const getTableData = (tableName, settingFunction) => {
        return dbAPI.requestEntireTableData(tableName)
            .then(data => {
                settingFunction(data);                                
            });
    };    
    const selectData = (tableName, signalsInput, rangesInput, wiresInput) => {
        setIsFetching(true);
        dbAPI.makeSelection(tableName, signalsInput, rangesInput, wiresInput)
            .then(data => {
                setSelectionResultData(data);                                
            })
            .catch(err => console.log(err))
            .finally( () => {
                setIsFetching(false);
            });
    };    

    useEffect( () => {        
        const initialize = () => {
            const promises = [];
            promises.push(getTableData(signalsTableName, setSignalsData));
            promises.push(getTableData(rangesTableName, setRangesData));
            promises.push(getTableData(wiresTableName, setWiresData));
    
            Promise.all(promises)
                .then( () => {                    
                    setIsInitialised(true);                    
                })
                .catch(err => console.log(err));                
        };        

        initialize();
    }, []);


    return (
        <div className="App">
            <h1 className="title">Akon</h1>
            <MainForm
                isInitialised={isInitialised}
                isFetching={isFetching}
                signalsData={signalsData}
                rangesData={rangesData}
                wiresData={wiresData}
                selectData={selectData}
            />
            <SelectionResult
                isFetching={isFetching}
                selectionResultData={selectionResultData}
            />
        </div>
    );
}

export default App;
