import React from 'react'
import { createBottomTabNavigator, createAppContainer } from 'react-navigation'

import {KeahlianNavigator} from '../routes/keahlian'
import InfoPage from '../pages/info'
import PelangganPage from '../pages/pelanggan'
import BottomBar from '../components/bottomBar'

const TabNav = createBottomTabNavigator({
    Utama: KeahlianNavigator,
    Info: InfoPage,
    Pelanggan: PelangganPage
}, {
    tabBarComponent: props => <BottomBar {...props} />
})

export default createAppContainer(TabNav)