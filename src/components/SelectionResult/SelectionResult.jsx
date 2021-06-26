import Preloader from "../common/Preloader/Preloader";

const SelectionResult = ({isFetching}) => {
    return (
        <div className="selection-result">
            <h2 className="selection-result-title">Результат выборки:</h2>
            {isFetching
                ?   <Preloader />
                :   <ul className="selection-result-list">
                        <li className="selection-result-item">1</li>
                        <li className="selection-result-item">2</li>
                        <li className="selection-result-item">3</li>
                    </ul>
            }            
        </div>
    );
}

export default SelectionResult;