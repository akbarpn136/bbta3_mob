import React from 'react'
import { WebView } from 'react-native-webview'

import TopBar from '../../components/topBar'

class RincianKeahlian extends React.Component {
    static navigationOptions = ({ navigation }) => ({
        header: <TopBar childStacked={true} push={navigation} />,
    })

    render() {
        return (
            <WebView
                source={{ uri: 'http://bbta3.bppt.go.id/aerodynamics-2/' }}
            />
        );
    }
}

export default RincianKeahlian