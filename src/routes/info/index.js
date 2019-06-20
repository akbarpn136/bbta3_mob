import { createStackNavigator } from 'react-navigation'

import BeritaPage from '../../pages/info'
import RincianPage from '../../pages/includes/rincianBerita'

export const InfoNavigator = createStackNavigator(
    {
        Berita: BeritaPage,
        RincianBerita: RincianPage
    }
)