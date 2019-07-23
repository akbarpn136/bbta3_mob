import React from 'react'
import {connect} from 'react-redux'
import {FlatList} from 'react-native'
import {
    Container, 
    Button,
    Text,
    Spinner,
    Body
} from 'native-base'

import ListBerita from '../components/listBerita'
import TopBar from '../components/topBar'
import {fetchBerita} from '../stores/actions/beritaAction'

class Info extends React.Component {
    componentDidMount() {
        this.props.fetchBerita(1)
    }

    static navigationOptions = {
        header: <TopBar title={'INFO BBTA3'} />,
    }

    render() {
        return (
            <Container>
                <FlatList data={this.props.berita.data}
                    keyExtractor={(item, index) => index.toString()}
                    renderItem={({item}) => <ListBerita data={item} push={this.props.navigation} />}
                    ListFooterComponent={
                        <Body>
                            <Button><Text>FOOTER {this.props.berita.loading.toString()}</Text></Button>
                        </Body>
                    }
                />
            </Container>
        )
    }
}

const mapStateToProps = state => {
    return {
        berita: state.berita
    }
}

const mapDispatchToProps = dispatch => {
    return {
        fetchBerita: (id) => dispatch(fetchBerita(id)),
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(Info)