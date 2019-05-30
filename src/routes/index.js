import { createBottomTabNavigator, createAppContainer } from 'react-navigation'

import UtamaPage from '../pages/utama'
import InfoPage from '../pages/info'
import PelangganPage from '../pages/pelanggan'

const TabNavigator = createBottomTabNavigator({
  Utama: UtamaPage,
  Info: InfoPage,
  Pelanggan: PelangganPage
})

export default createAppContainer(TabNavigator)