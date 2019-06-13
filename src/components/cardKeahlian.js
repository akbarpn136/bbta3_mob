import React from 'react'
import {Image, View} from 'react-native'
import {
    Card,
    CardItem,
    Text,
    Body
} from 'native-base'

class CardKeahlian extends React.Component {
    constructor(props) {
        super(props)
    }

    render() {
        return (
            <Card>
                <CardItem cardBody>
                    <View>
                        <Text>{this.props.data.title.rendered}</Text>
                    </View>
                    <Image source={{ 
                        uri: this.props.data._embedded["wp:featuredmedia"]["0"].source_url
                    }} style={{ height: 200, width: null, flex: 1 }} />
                </CardItem>
            </Card>
        )
    }
}

export default CardKeahlian
