import { createStackNavigator } from 'react-navigation'

import UtamaPage from '../../pages/utama'
import KeahlianPage from '../../pages/includes/rinciankeahlian'

export const KeahlianNavigator = createStackNavigator(
    {
        Utama: UtamaPage,
        KeahlianRinci: KeahlianPage
    }
)
