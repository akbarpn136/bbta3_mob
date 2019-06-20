import React from 'react'
import { FlatList } from 'react-native'

import ListBerita from '../components/listBerita'
import TopBar from '../components/topBar'

class Info extends React.Component {
    static navigationOptions = {
        header: <TopBar title={'INFO BBTA3'} />,
    }

    render() {
        return (
            <FlatList data={[{key: 'a'}, {key: 'b'}]}
                renderItem={({item}) => <ListBerita />} />
        );
    }
}

export default Info