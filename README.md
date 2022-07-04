# qb-restarter
Restart Announces for the QBCore Framewok :people_holding_hands:

# License
    QBCore Restarter
    Copyright (C) 2022 Bart Verschuren

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>


## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [interact-sound](https://github.com/qbcore-framework/interact-sound) - For the sounds

## Installation
### Manual
- Go to `qb-core/html/css/style.css` and add the following at line `26`, you can change the colors if you want:
```css
.restart {
    background-color: rgba(23, 23, 23, 90%); 
    border-radius: 10px;
    box-shadow: 0rem 0rem 0.1rem 0.05rem #000000;
    border-left: 5px solid #DA004E;
}
```

- Go to `qb-core/config.lua` and add the following at line `69`:
```lua
    restart = {
        classes = 'restart',
        icon = 'fas fa-clock'
    },
```

- Add the `.ogg` file included this resource from `sounds` in `[standalone]/interact-sound`.


- At least you ensure this resource in you `resouces.cfg`
```
ensure qb-restarter
```
