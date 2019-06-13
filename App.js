import React from 'react'
import {createStore, applyMiddleware} from 'redux'
import {Provider} from 'react-redux'
import thunk from 'redux-thunk'
import {useScreens} from 'react-native-screens'

import Routes from './src/routes'
import reducers from './src/stores/reducers'

useScreens()

export default class App extends React.Component {
    render() {
        return (
            <Provider store={createStore(reducers, applyMiddleware(thunk))}>
                <Routes />
            </Provider>
        )
    }
}