
import Preloader from "../common/Preloader/Preloader";
import { Formik, Form, Field } from 'formik';

const MainForm = ({ isInitialised, isFetching, signalsData, rangesData, wiresData }) => {

    if (!isInitialised) {
        return (
            <Preloader />
        );
    }

    const signalsOptions = signalsData.map( signal => {
        return <option key={signal.ID} value={signal.ID}>{signal.NAME}</option>
    });
    const rangesOptions = rangesData.map( range => {
        return <option key={range.ID} value={range.ID}>{range.NAME}</option>
    });
    const wiresOptions = wiresData.map( wire => {
        return <option key={wire.id} value={wire.id}>{wire.name_ru}</option>
    });

    return (
        <Formik                        
            onSubmit={(values, { setSubmitting }) => {
                setTimeout(() => {
                    alert(JSON.stringify(values, null, 2));
                    setSubmitting(false);
                }, 400);
            }}
        >
            { () => (
                <Form>
                    <div>                        
                        <Field as="select" name="signalsInput" id="signalsInput">
                            <option value="%">-</option>
                            {signalsOptions}
                        </Field>            
                                
                        <Field as="select" name="rangesInput" id="rangesInput">
                            <option value="%">-</option>
                            {rangesOptions}
                        </Field>  
                                         
                        <Field as="select" name="wiresInput" id="wiresInput">
                            <option value="%">-</option>
                            {wiresOptions}
                        </Field>                    
                        
                    </div>
                    
                    
                    <button type="submit" disabled={isFetching}>
                        Сделать выборку
                    </button>
                </Form>
            )}
        </Formik>

    );

}

export default MainForm;