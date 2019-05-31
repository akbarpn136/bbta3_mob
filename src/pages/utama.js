import React from 'react'
import { 
    Container,
    Header,
    Title,
    Content,
    Button,
    Left,
    Right,
    Body,
    Icon,
    Text 
} from 'native-base'

class Utama extends React.Component {
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
                    <Text>
                        Daftar keahlian
                    </Text>
                </Content>
            </Container>
        );
    }
}

export default Utama