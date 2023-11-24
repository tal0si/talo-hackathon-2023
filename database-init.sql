\c postgres

create table hello_world (
    hello text not null
);

INSERT INTO hello_world (hello) VALUES (
E'H         H  eeeee  l          l          oooooo   oooooo  w          w     \n' ||
E'H         H  e      l          l         o      o o      o w        w    w  \n' ||
E'H         H  e      l          l         o      o o      o w      w    w    \n' ||
E'H   HHH   H  eeeee  l          l         o      o o      o w    w    w      \n' ||
E'H   HHH   H  e      l          l         o      o o      o w  w    w  w     \n' ||
E'H   HHH   H  e      l          l         o      o o      o w w      w w     \n' ||
E'H         H  e      l          l         o      o o      o ww        ww     \n' ||
E'H         H  eeeee  llllll     llllll     oooooo   oooooo  w          w     \n'
);