import React from 'react'
import { createBottomTabNavigator, createAppContainer } from 'react-navigation'

import UtamaPage from '../pages/utama'
import InfoPage from '../pages/info'
import PelangganPage from '../pages/pelanggan'
import BottomBar from '../components/bottomBar'

const TabNav = createBottomTabNavigator({
    Utama: UtamaPage,
    Info: InfoPage,
    Pelanggan: PelangganPage
}, {
    tabBarComponent: props => <BottomBar {...props} />
})

export default createAppContainer(TabNav)