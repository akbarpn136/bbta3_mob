import React from 'react'
import {Image, View, TouchableOpacity, StyleSheet} from 'react-native'
import {
    Card,
    CardItem,
    Text,
} from 'native-base'

class CardKeahlian extends React.Component {
    goToKeahlianRinci = () => {
        this.props.push.navigate('KeahlianRinci')
    }

    render() {
        return (
            <TouchableOpacity onPress={() => this.goToKeahlianRinci()}>
                <Card>
                    <CardItem cardBody>
                        <View style={styles.textOverlay}>
                                <Text style={styles.textCustom}>{this.props.data.title.rendered}</Text>
                        </View>

                        <Image source={{uri: this.props.data._embedded["wp:featuredmedia"]["0"].source_url}} 
                            style={styles.imageOverlay} />
                    </CardItem>
                </Card>
            </TouchableOpacity>
        )
    }
}

const styles = StyleSheet.create({
    textCustom: {
        color: 'white',
        fontSize: 43,
        textTransform: 'uppercase'
    },
    imageOverlay: {
        height: 200,
        width: null,
        flex: 1
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
