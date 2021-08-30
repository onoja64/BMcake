// eslint-disable-next-line import/no-unresolved
import { PancakeTheme } from '@onoja64/boomui/dist/theme'

declare module 'styled-components' {
  /* eslint-disable @typescript-eslint/no-empty-interface */
  export interface DefaultTheme extends PancakeTheme {}
}
