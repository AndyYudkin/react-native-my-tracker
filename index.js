// @flow
import { NativeModules } from 'react-native';

const { RNMyTracker } = NativeModules;

export const trackEventWithName = (eventName: string, parameters: ?Object = null) => {
  RNMyTracker.trackEventWithName(eventName, parameters);
};

export const setUserID = (userID: string) => {
  RNMyTracker.setUserInfo(userID);
};
