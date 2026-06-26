# Walkthrough — Profile Update and Role Revert

I have updated the GitHub profile URL and reverted specific role titles in the UI while preserving the SEO and .NET integration.

## Key Changes

### 1. GitHub Profile Update
- **[constants.dart](file:///Users/dev/Documents/GitHub/portfolio/lib/core/utils/constants.dart)**: Updated `githubUrl` to the new profile: `https://github.com/devamitkumartiwari`.
- Verified all social icons in the Hero and Footer point to this new URL.

### 2. UI Role Branding Revert
- **[app_strings.dart](file:///Users/dev/Documents/GitHub/portfolio/lib/core/l10n/app_strings.dart)**:
    - Reverted `heroRole` to **"Full Stack Developer"** across all 12 supported languages.
    - Reverted `headerTagline` to **"/ Mobile Architect"** across all 12 supported languages.
    - **SEO Preservation**: Kept the word "Freelance" in bios and project descriptions to maintain the search engine visibility improvements implemented earlier.

### 3. Exclusions
- Per your instructions, no changes were made to `index.html` or `manifest.json` regarding these branding reverts.

## Verification Summary
- **Link Check**: Confirmed the new GitHub URL is correctly applied in the global constants.
- **Translation Check**: Verified that the primary roles in the Hero and Header are reverted to their original localized versions across all 12 languages.
- **LinkedIn Check**: Confirmed that your LinkedIn profile remains active and visible in the social sections.
