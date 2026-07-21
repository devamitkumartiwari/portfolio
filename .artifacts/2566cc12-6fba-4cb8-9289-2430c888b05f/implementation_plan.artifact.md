# Implementation Plan - Add Multiple App Privacy Policy URLs

The goal is to add 6 new privacy policy URLs to the portfolio website. Each URL will have a dedicated path and a corresponding screen.

- `https://hireamit.web.app/chaiempire/privacy-policy`
- `https://hireamit.web.app/gridzen/privacy-policy`
- `https://hireamit.web.app/saathi/privacy-policy`
- `https://hireamit.web.app/wordshakti/privacy-policy`
- `https://hireamit.web.app/cleanspace/privacy-policy`
- `https://hireamit.web.app/vitacore/privacy-policy`

> [!IMPORTANT]
> All 6 apps are designated as **Kids Apps** and contain **Advertisements**. The privacy policies will follow the Google Play Families Policy guidelines (no personal data collection, child-safe ads, etc.), similar to the Akshara Kids policy.

## Proposed Changes

### Routing

#### [MODIFY] [routes.dart](file:///Users/dev/Documents/GitHub/portfolio/lib/core/routes/routes.dart)
- Instead of 6 separate routes, I will implement a dynamic route: `/:appId/privacy-policy`.
- This will match any of the new app IDs and provide the `appId` to the `KidsAppPrivacyPolicyScreen`.
- This approach is highly scalable for any future apps you add.

### Pages

#### [NEW] [kids_app_privacy_policy.dart](file:///Users/dev/Documents/GitHub/portfolio/lib/pages/kids_apps/kids_app_privacy_policy.dart)
- Create a reusable `KidsAppPrivacyPolicyScreen`.
- It will accept an `appName` and `appDescription` as parameters (or via route state).
- The template will be based on the `Akshara Kids` policy, incorporating:
    - COPPA/GDPR compliance for children.
    - Disclosure of child-safe, non-personalized ads.
    - Statement on zero personal data collection.
    - Local data processing.

#### [NEW] [kids_app_configs.dart](file:///Users/dev/Documents/GitHub/portfolio/lib/pages/kids_apps/kids_app_configs.dart)
- Map of app IDs to their display names and specific educational focuses (e.g., "GridZen — logical thinking and puzzles").

## Content Strategy
- **VitaCore & CleanSpace**: Use content similar to the existing main privacy policy but focused specifically on each app.
- **WordShakti**: Focus on educational/gaming aspects, no personal data collection if applicable.
- **ChaiEmpire, GridZen, Saathi**: Use a professional template that covers standard data collection (device info, usage data) and clearly states if ads are present.

## Verification Plan

### Manual Verification
- Navigate to each of the 6 new URLs:
    - `/chaiempire/privacy-policy`
    - `/gridzen/privacy-policy`
    - `/saathi/privacy-policy`
    - `/wordshakti/privacy-policy`
    - `/cleanspace/privacy-policy`
    - `/vitacore/privacy-policy`
- Verify the app name and content correctly update for each route.
