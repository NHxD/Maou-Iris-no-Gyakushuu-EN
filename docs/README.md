# Maou Iris no Gyakushuu (English Patch)

This mod improves the English localization of Dieselmine's RPG 《魔王イリスの逆襲》 localized and published as *Elise The Devil* on [Steam](https://store.steampowered.com/app/711990/Elise_the_Devil/) by SakuraGame in 2017.

## Screenshots

<table>
    <tr>
        <td>
            <img alt="Example - Text Formatting (Before)" src="/docs/screenshots/example-1a.jpg"/>
        </td>
        <td>
            <img alt="Example - Text Formatting (After)" src="/docs/screenshots/example-1b.jpg"/>
        </td>
    </tr>
    <tr>
        <td>
            <img alt="Example - Widescreen (Before)" src="/docs/screenshots/example-2a.jpg"/>
        </td>
        <td>
            <img alt="Example - Widescreen (After)" src="/docs/screenshots/example-2b.jpg"/>
        </td>
    </tr>
    <tr>
        <td>
            <img alt="Example - UI (Before)" src="/docs/screenshots/example-3a.jpg"/>
        </td>
        <td>
            <img alt="Example - UI (After)" src="/docs/screenshots/example-3b.jpg"/>
        </td>
    </tr>
</table>

## List of changes

- Rewrite dialogues, names, descriptions, etc.
- Add support for various screen sizes, including widescreen (e.g., set the option `fit` to `width`, then resize the window horizontally, etc.)
- Add new key bindings (e.g., `ctrl` is used to fast-forward instead of `alt`, `backspace` to cancel, `tab` or `right mouse button` to toggle message window, etc.)
- Add new costumes (e.g., swimsuit, choker variants, etc.)
- Add new character sprites (e.g., proper maid costume, kidnapped village girls, etc.)
- Add new characters and interactions (e.g., you can pet the dog!)
- Add new game mechanics (e.g., lewdness increases by walking or talking while wearing less clothing, store discounts for showing lewds, morale degradation, etc.)
- Add new sex attributes and status screens
- Add animated in-game sequences before most H events
- Add new weather effects in some maps
- Add new screen overlays in some maps
- Add replay option to the main menu
- Add all-age option to make it easier to live-stream or record gameplay videos
- Improve replay window (e.g., unlock progress display, CG mouse navigation, asynchronous CG loading, etc.)
- Improve text handling in windows (e.g., automatic word wrapping, formatting, etc.)
- Fix many story events (e.g., stuck characters, non-animated bosses, missing screen flashes, missing animations, etc.)
- The shogun's bodyguards have a new look matching their battler images
- The angels transform into their monster forms before battle
- The jailer can now be repeatedly electrocuted
- Sonia and Zexy are now added to the party when visiting the demon castle, thus allowing the player to manage them (e.g., strip) and check their status (e.g., sex development)
- And more...

## Notes

- The localization is not necessarily close to the original lines written by Dieselmine. (e.g. I kept SakuraGame's use of the word "Devil" instead of the probably more correct "Demon Lord")
- I have zero interest in writing smut, so almost all dialogues for H events (e.g., after being defeated by a boss, the prison, the western brothel, etc.) are left mostly unchanged
- To play in Japanese, you need to copy over the Japanese dialogue files first (from the Japanese retail version)
- When playing in a language other than English, the game may or may not work correctly
- New features (e.g., sex status screens, option menus, etc.) are not translated to Japanese nor Chinese
- Only the first 5 bosses can be resisted during H events
- The 5th boss can only be resisted once, because Sonia is supposed to remain *pure* for one of her special H event afterward
- If the names bother you too much, you can add your own translations to `www/js/plugins/ASH_CustomWords.js` (e.g., `{ key:"Chiot", value:"Shion" }`)
- Some skill descriptions are misleading (e.g., granting immunity to some ailment when it actually does not) or even completely wrong (e.g., strikes a single enemy when it actually hits random enemies)
- Game saves aren't compatible with the original game
