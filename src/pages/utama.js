import React from 'react'
import {connect} from 'react-redux'
import {FlatList} from 'react-native'
import { 
    Container,
    Header,
    Title,
    Content,
    Right,
    Body,
    Spinner
} from 'native-base'

import CardKeahlian from '../components/cardKeahlian'

import {fetchKeahlian} from '../stores/actions/keahlianAction'

class Utama extends React.Component {
    componentDidMount() {
        this.props.fetchKeahlian()
    }

    render() {
        return (
            <Container>
                <Header noLeft>
                    <Body>
                        <Title>BBTA3 BPPT</Title>
                    </Body>
                    <Right />
                </Header>
                <Content padder>
                    {
                        this.props.keahlian.length == 0 ? 
                        <Spinner color='grey' /> :
                        <FlatList
                            data={this.props.keahlian}
                            keyExtractor={(item, index) => index.toString()}
                            renderItem={({ item }) => <CardKeahlian data={item} />}
                        />
                    }
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