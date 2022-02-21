import { useSelector, TypedUseSelectorHook } from 'react-redux';
import { State } from '../store/reducers';
export const useTypedSelector: TypedUseSelectorHook<State> = useSelector;