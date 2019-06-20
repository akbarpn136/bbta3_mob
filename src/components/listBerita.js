import React from 'react'
import {
    ListItem,
    Left,
    Thumbnail,
    Body,
    Text,
    Right,
    Button
} from 'native-base'

class ListBerita extends React.Component {
    render() {
        const hasFeatureMedia = this.props.data._embedded["wp:featuredmedia"]

        return (
            <ListItem thumbnail>
              <Left>
                {
                  hasFeatureMedia ? 
                  <Thumbnail square source={{ uri: hasFeatureMedia[0].source_url}} /> :
                  <Thumbnail square source={{ uri: 'http://bbta3.bppt.go.id/wp-content/uploads/2019/05/bbta3_cover.jpg'}} />
                }
              </Left>
              <Body>
                <Text>{this.props.data.title.rendered}</Text>
              </Body>
              <Right>
                <Button transparent onPress={() => {this.props.push.navigate('RincianBerita', {beritaUrl: this.props.data.link})}}>
                  <Text>Lihat</Text>
                </Button>
              </Right>
            </ListItem>
        )
    }
}

export default ListBerita
