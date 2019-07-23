import React from 'react'
import {connect} from 'react-redux'
import {FlatList} from 'react-native'
import { 
    Container,
    Content,
    Spinner
} from 'native-base'

import CardKeahlian from '../components/cardKeahlian'
import TopBar from '../components/topBar'

import {fetchKeahlian} from '../stores/actions/keahlianAction'

class Utama extends React.Component {
    componentDidMount() {
        this.props.fetchKeahlian()
    }

    static navigationOptions = {
        header: <TopBar />,
    }

    render() {
        return (
            <Container>
                <Content padder>
                    <FlatList
                        data={this.props.keahlian}
                        keyExtractor={(item, index) => index.toString()}
                        renderItem={({ item }) => <CardKeahlian data={item} push={this.props.navigation} />}
                        ListHeaderComponent={this.props.keahlian.length == 0 && <Spinner color='gray' />}
                    />
                </Content>
            </Container>
        );
    }
}

const mapStateToProps = state => {
    return {
        keahlian: state.keahlian
    }
}

const mapDispatchToProps = dispatch => {
    return {
        fetchKeahlian: () => dispatch(fetchKeahlian())
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(Utama)