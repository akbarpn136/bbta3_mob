import React from 'react'
import {connect} from 'react-redux'
import {FlatList} from 'react-native'

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
            <FlatList data={this.props.berita}
                keyExtractor={(item, index) => index.toString()}
                renderItem={({item}) => <ListBerita data={item} push={this.props.navigation} />} />
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