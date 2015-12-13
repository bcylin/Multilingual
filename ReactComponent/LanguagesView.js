'use strict';

var React = require('react-native');
var {
  ListView,
  Text,
  TouchableHighlight,
  View
} = React;

var styles = React.StyleSheet.create({
  rowContainer: {
    flexDirection: 'row',
    padding: 10
  },
  title: {
    fontSize: 17
  },
  target: {
    fontSize: 17,
    color: 'blue'
  },
  separator: {
    height: 1,
    backgroundColor: 'lightGray'
  }
});

class LanguagesView extends React.Component {

  constructor(props) {
    super(props);
    let dataSource = new ListView.DataSource({rowHasChanged: (r1, r2) => r1 !== r2});
    this.state = {
      dataSource: dataSource.cloneWithRows(['Swift', 'Objective-C', 'JavaScript'])
    };
  }

  renderRow(rowData, sectionID, rowID) {
    return (
      <TouchableHighlight underlayColor='lightGray'>
        <View>
          <View style={styles.rowContainer}>
            <Text style={(rowData === 'JavaScript' ? styles.target : styles.title)} numberOfLines={1}>
              {rowData}
            </Text>
          </View>
          <View style={styles.separator} />
        </View>
      </TouchableHighlight>
    );
  }

  render() {
    return (
      <ListView dataSource={this.state.dataSource}
                renderRow={this.renderRow.bind(this)} />
    );
  }
}

module.exports = LanguagesView;
