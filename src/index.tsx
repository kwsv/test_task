import { createRoot } from 'react-dom/client';

const root = document.getElementById('root') as HTMLElement;

if (!root) {
    throw Error('root not found');
}

const react = createRoot(root);

react.render(<h1>APP Edited 8</h1>);