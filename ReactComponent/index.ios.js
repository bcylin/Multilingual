'use strict';

var React = require('react-native');
var {
  Text,
  View
} = React;

var styles = React.StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'gray'
  },
  text: {
    color: 'white',
    textAlign: 'center'
  }
});

class LanguagesView extends React.Component {
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.text}>This will be LanguagesView.</Text>
      </View>
    )
  }
}

React.AppRegistry.registerComponent('LanguagesView', () => LanguagesView);
