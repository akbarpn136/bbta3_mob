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
        return (
            <ListItem thumbnail>
              <Left>
                <Thumbnail square source={{ uri: 'http://bbta3.bppt.go.id/wp-content/uploads/2019/06/Cover-Berita-BBTA3-1.jpg' }} />
              </Left>
              <Body>
                <Text>Sankhadeep</Text>
                <Text note numberOfLines={1}>Its time to build a difference . .</Text>
              </Body>
              <Right>
                <Button transparent>
                  <Text>Lihat</Text>
                </Button>
              </Right>
            </ListItem>
        )
    }
}

export default ListBerita
