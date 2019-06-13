import {combineReducers} from 'redux'

import {keahlianReducer} from './keahlian/keahlianReducer'

export default combineReducers({
    keahlian: keahlianReducer
})
