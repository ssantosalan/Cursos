import React from "react";
import { Text, View, StyleSheet, Button, Alert } from "react-native";

const styles = StyleSheet.create({
  center: {
    alignItems: "center",
  },
});

const Greeting = (props) => {
  return (
    <View style={styles.center}>
      <Text>olá tudo bem {props.name} </Text>
    </View>
  );
};

const App = () => {
  return (
    <View
      style={{
        flex: 1,
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      <Button title="Clique aqui" onPress={() => Alert.alert("Olá mundo")} />
    </View>
  );
};

export default App;
