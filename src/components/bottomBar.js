import React from 'react'
import {
    Footer,
    FooterTab,
    Button,
    Icon,
} from 'native-base'

class BottomBar extends React.Component {
    render() {
        return (
            <Footer>
                <FooterTab>
                    <Button
                        active={this.props.navigation.state.index === 0}
                        onPress={() => this.props.navigation.navigate("Utama")} >
                        <Icon name="home" />
                    </Button>
                    <Button
                        active={this.props.navigation.state.index === 1}
                        onPress={() => this.props.navigation.navigate("Info")} >
                        <Icon name="book" />
                    </Button>
                    <Button
                        active={this.props.navigation.state.index === 2}
                        onPress={() => this.props.navigation.navigate("Pelanggan")} >
                        <Icon name="person" />
                    </Button>
                </FooterTab>
            </Footer>
        )
    }
}

export default BottomBar