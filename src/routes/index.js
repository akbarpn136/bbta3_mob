import React from 'react'
import { createBottomTabNavigator, createAppContainer } from 'react-navigation'

import {KeahlianNavigator} from '../routes/keahlian'
import {InfoNavigator} from '../routes/info'
import PelangganPage from '../pages/pelanggan'
import BottomBar from '../components/bottomBar'

const TabNav = createBottomTabNavigator({
    Utama: KeahlianNavigator,
    Info: InfoNavigator,
    Pelanggan: PelangganPage
}, {
    tabBarComponent: props => <BottomBar {...props} />
})

export default createAppContainer(TabNav)