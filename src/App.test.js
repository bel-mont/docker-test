import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/fug lad/i);
  expect(linkElement).toBeInTheDocument();
});

test('bruh', () => {
  render(<App />);
  const linkElement = screen.getByText(/fug lad/i);
  expect(linkElement).toBeInTheDocument();
});
