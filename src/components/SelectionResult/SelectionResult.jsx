import "./SelectionResult.css";
import Preloader from "../common/Preloader/Preloader";

const SelectionResult = ({isFetching, selectionResultData}) => {
    let results = null;
    if (selectionResultData[0].message) {
        results = <li className="selection-result-item__error">{selectionResultData[0].message}</li>
    } else if (selectionResultData[0].ID) {
        results = selectionResultData.map( item => {
            return <li key={item.ID} className="selection-result-item">{item.DEVICE_NAME_ID}-{item.ID}</li>
        });
    }          
    
    return (
        <div className="selection-result">
            <h2 className="selection-result-title">Результат выборки:</h2>
            {isFetching
                ?   <Preloader />
                :   <ul className="selection-result-list">
                        {results}
                    </ul>
            }            
        </div>
    );
}

export default SelectionResult;