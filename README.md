# AI Design System

A powerful design system management application that integrates with Storybook and uses AI to generate component code and analyze design system health.

## Features

- 🔗 **Storybook Integration**: Connect to your existing Storybook instance
- 🤖 **AI-Powered Code Generation**: Generate production-ready component code using Claude AI
- 📊 **Design System Analytics**: AI-powered analysis of your design system health
- 🎨 **Component Management**: View, search, and manage your design system components
- 📱 **Modern UI**: Beautiful, responsive interface built with React and Tailwind CSS

## Setup

### 1. Install Dependencies

```bash
npm install
```

### 2. Environment Configuration

Create a `.env` file in the root directory:

```bash
# Anthropic API Key for AI-powered code generation
# Get your API key from: https://console.anthropic.com/
REACT_APP_ANTHROPIC_API_KEY=your_api_key_here

# Storybook URL (optional - can be set in the service)
REACT_APP_STORYBOOK_URL=https://your-storybook-url.com
```

### 3. Start Development Server

```bash
npm run dev
```

## Usage

### Connecting to Storybook

1. Navigate to the **Components** tab
2. The app will automatically attempt to connect to your Storybook
3. Check the connection status indicator (green WiFi = connected, red WiFi = disconnected)
4. Use the **Refresh** button to reload component data
5. Click **Open Storybook** to view your Storybook in a new tab

### Generating Component Code

1. Select your preferred **Framework** and **Styling** from the dropdowns
2. Click **Generate Code** on any component
3. The AI will analyze your component's Storybook data and generate production-ready code
4. View the generated code in the modal and copy it to your clipboard

### Viewing Documentation

- **View Docs**: Opens the component's Storybook documentation page
- **View Story**: Opens the interactive component story

### AI Analysis

1. Click **AI Analysis** to analyze your design system health
2. Get scores for Coverage, Accessibility, Consistency, and Maintenance
3. Receive AI-powered recommendations for improvement

## Architecture

- **Frontend**: React + TypeScript + Tailwind CSS
- **AI Integration**: Anthropic Claude API for code generation and analysis
- **Storybook Integration**: Direct API calls to Storybook's `stories.json` endpoint
- **State Management**: React hooks for local state management

## File Structure

```
src/
├── components/          # React components
│   ├── Dashboard.tsx   # Main dashboard view
│   ├── ComponentLibrary.tsx # Component management
│   └── ...
├── services/           # Business logic services
│   ├── storybookService.ts # Storybook integration
│   ├── aiService.ts   # AI API integration
│   └── ...
├── types/             # TypeScript type definitions
└── data/              # Mock data and static content
```

## Troubleshooting

### Code Generation Fails

- Ensure you have a valid Anthropic API key in your `.env` file
- Check the browser console for detailed error messages
- Verify your API key has sufficient credits

### Storybook Connection Issues

- Verify your Storybook URL is accessible
- Check that your Storybook has CORS enabled
- Ensure the `stories.json` endpoint is available

### Component Data Not Loading

- Check the connection status indicator
- Use the **Refresh** button to reload data
- Verify your Storybook has components with proper story configurations

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

MIT License - see LICENSE file for details
