/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import { 
  Container, 
  Header, 
  Title, 
  Content, 
  Footer, 
  FooterTab, 
  Button,
  Body,
  Text,
  Icon
} from 'native-base'
import { useScreens } from 'react-native-screens';

useScreens();

export default class App extends Component {
  render() {
    return (
      <Container>
        <Header noLeft>
          <Body>
            <Title>BBTA3 BPPT</Title>
          </Body>
        </Header>

        <Content>
          <Text>
            This is Content Section
          </Text>
        </Content>

        <Footer>
          <FooterTab>
            <Button active>
              <Icon active name="home" />
            </Button>
            <Button>
              <Icon name="book" />
            </Button>
            <Button>
              <Icon name="person" />
            </Button>
          </FooterTab>
        </Footer>
      </Container>
    )
  }
}
