import React from 'react'
import { WebView } from 'react-native-webview'

import TopBar from '../../components/topBar'

class RincianKeahlian extends React.Component {
    static navigationOptions = ({ navigation }) => ({
        header: <TopBar childStacked={true} push={navigation} />,
    })

    render() {
        const keahlian_url = this.props.navigation.getParam('keahlianUrl', 'http://bbta3.bppt.go.id/aerodynamics-2/')
        return (
            <WebView
                source={{ uri: keahlian_url }}
            />
        );
    }
}

export default RincianKeahlian