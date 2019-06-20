import React from 'react'
import {
    Header,
    Body,
    Title,
    Left,
    Right,
    Button,
    Icon
} from 'native-base'

class ParentStacked extends React.Component {
    render() {
        return (
            <Header noLeft>
                <Body>
                    <Title>{this.props.title ? this.props.title : 'BBTA3 BPPT'}</Title>
                </Body>
            </Header>
        )
    }
}

class ChildStacked extends React.Component {
    render() {
        return (
            <Header>
                <Left>
                    <Button transparent 
                        onPress={() => this.props.push.goBack()}>
                        <Icon name="arrow-back" />
                    </Button>
                </Left>
                <Body>
                    <Title>{this.props.title ? this.props.title : 'BBTA3 BPPT'}</Title>
                </Body>
                <Right />
            </Header>
        )
    }
}

class TopBar extends React.Component {
    render() {
        if (this.props.childStacked) return (<ChildStacked title={this.props.title} push={this.props.push} />)
        else return (<ParentStacked title={this.props.title} />)
    }
}

export default TopBar