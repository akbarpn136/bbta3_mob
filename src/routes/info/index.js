import { createStackNavigator } from 'react-navigation'

import BeritaPage from '../../pages/info'

export const InfoNavigator = createStackNavigator(
    {
        Berita: BeritaPage,
    }
)