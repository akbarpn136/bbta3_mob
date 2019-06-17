import React from 'react'
import {Image, View, StyleSheet} from 'react-native'
import {
    Card,
    CardItem,
    Text,
} from 'native-base'

class CardKeahlian extends React.Component {
    constructor(props) {
        super(props)
    }

    render() {
        return (
            <Card>
                <CardItem cardBody>
                    <View style={styles.textOverlay}>
                        <Text style={styles.textColor}>{this.props.data.title.rendered}</Text>
                    </View>
                    <Image source={{ 
                        uri: this.props.data._embedded["wp:featuredmedia"]["0"].source_url
                    }} style={{ height: 200, width: null, flex: 1 }} />
                </CardItem>
            </Card>
        )
    }
}

const styles = StyleSheet.create({
    textColor: {
        color: 'white',
        fontSize: 48
    },
    textOverlay: {
        flex: 1,
        flexDirection: 'row',
        justifyContent: 'center',
        alignItems: 'center',
        position: 'absolute', 
        zIndex: 1,
        top: 0, 
        left: 0, 
        right: 0, 
        bottom: 0,
    }
})

export default CardKeahlian
