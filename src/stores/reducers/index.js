import {combineReducers} from 'redux'

import {keahlianReducer} from './keahlian/keahlianReducer'
import {beritaReducer} from './info/beritaReducer'

export default combineReducers({
    keahlian: keahlianReducer,
    berita: beritaReducer
})
