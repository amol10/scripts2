import { test } from '@playwright/test';

test('Page Screenshot', async ({ page }) {
    await page.goto('https://onedrive.live.com');
    await page.Screenshot({ path: 'live.png'});
});

