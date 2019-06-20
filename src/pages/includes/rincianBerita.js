import React from 'react'
import { WebView } from 'react-native-webview'

import TopBar from '../../components/topBar'

class RincianBerita extends React.Component {
    static navigationOptions = ({ navigation }) => ({
        header: <TopBar title={'Rincian Berita'} childStacked={true} push={navigation} />,
    })

    render() {
        const berita_url = this.props.navigation.getParam('beritaUrl', 'http://bbta3.bppt.go.id/aerodynamics-2/')
        return (
            <WebView
                source={{ uri: berita_url }}
            />
        );
    }
}

export default RincianBerita