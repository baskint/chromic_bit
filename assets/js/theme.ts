import { createMuiTheme } from '@material-ui/core/styles';

const theme = {
  colors: {
    darkBlue: '#07334E',
    green: '#8FD16A',
    blue: '#009BFF',
    lightGray: '#F9F9F9',
    darkGray: '#2C323E',
    bodyText: '#4A4A4A',
    blueText: '#142160',
    dividerGray: '#979797',
    labelGray: '#6B6F77',
    background: '#F9F9F9',
  },
};

export const muiTheme = createMuiTheme({
  palette: {
    primary: {
      main: theme.colors.blue,
      contrastText: '#ffffff',
    },
  },
  typography: {
    fontFamily: [
      'Unify Sans', 'Arial', 'Helvetica', 'sans-serif',
    ].join(','),
    h1: {
      fontSize: '32px',
      lineHeight: '38px',
      fontWeight: 600,
      color: '#2C323E',
    },
    body1: {
      fontSize: '16px',
      lineHeight: '24px',
      color: '#4A4A4A',
    },
  },
  overrides: {
    MuiButton: {
      contained: {
        boxShadow: '0 1px 3px 0 rgba(0,0,0,0.2)',
      },
      root: {
        borderRadius: '2px',
        fontWeight: 300,
        fontSize: '14px',
        textTransform: 'none',
      },
    },
  },
});
export default theme;
