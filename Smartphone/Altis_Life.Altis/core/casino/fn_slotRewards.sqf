_idxA = [_this,0,-1,[0]] call BIS_fnc_param;
_idxB = [_this,1,-1,[0]] call BIS_fnc_param;
_idxC = [_this,2,-1,[0]] call BIS_fnc_param;
_slotType = [_this,3,0,[0]] call BIS_fnc_param;
if(_idxA == -1 OR _idxB == -1 OR _idxC == -1) exitWith {[]};

_ret = 0;

if(_idxA == 8 && _idxB == 8 && _idxC == 8)then//                      (BAR , BAR , BAR)
{
   if(_slotType == 0)then {_ret = 500000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 1000000;};   //average joe's
   if(_slotType == 2)then {_ret = 2000000;};  //high roller's
};
       
if(_idxA == 7 && _idxB == 7 && _idxC == 7)then//                      (7 , 7 , 7)
{
   if(_slotType == 0)then {_ret = 300000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 600000;};   //average joe's
   if(_slotType == 2)then {_ret = 1200000;};  //high roller's
};

if(_idxA == 6 && _idxB == 6 && _idxC == 6)then//                      (DIAMOND , DIAMOND , DIAMOND)
{
   if(_slotType == 0)then {_ret = 200000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 400000;};   //average joe's
   if(_slotType == 2)then {_ret = 800000;};  //high roller's
};
         
if(_idxA == 5 && _idxB == 5 && _idxC == 5)then//                      (BELL , BELL , BELL)
{
   if(_slotType == 0)then {_ret = 100000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 200000;};   //average joe's
   if(_slotType == 2)then {_ret = 400000;};  //high roller's
};

if(_idxA == 4 && _idxB == 4 && _idxC == 4)then//                      (GLASS , GLASS , GLASS)
{
   if(_slotType == 0)then {_ret = 50000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 100000;};   //average joe's
   if(_slotType == 2)then {_ret = 200000;};  //high roller's
};
         
if(_idxA == 3 && _idxB == 3 && _idxC == 3)then//                      (GRAPS , GRAPS , GRAPS)
{
   if(_slotType == 0)then {_ret = 40000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 80000;};   //average joe's
   if(_slotType == 2)then {_ret = 160000;};  //high roller's
};
         
if(_idxA == 2 && _idxB == 2 && _idxC == 2)then//                      (PLUMS , PLUMS , PLUMS)
{
   if(_slotType == 0)then {_ret = 30000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 60000;};   //average joe's
   if(_slotType == 2)then {_ret = 120000;};  //high roller's
};
         
if(_idxA == 1 && _idxB == 1 && _idxC == 1)then//                      (CHERRY , CHERRY , CHERRY)
{
   if(_slotType == 0)then {_ret = 20000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 40000;};   //average joe's
   if(_slotType == 2)then {_ret = 80000;};  //high roller's
};

if(_idxA == 0 && _idxB == 0 && _idxC == 0)then//                      (LEAF , LEAF , LEAF)
{
   if(_slotType == 0)then {_ret = 10000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 20000;};   //average joe's
   if(_slotType == 2)then {_ret = 40000;};  //high roller's
};


if((_idxA == 8 && _idxB == 8 && _idxC != 8) or (_idxA == 8 && _idxB != 8 && _idxC == 8) or (_idxA != 8 && _idxB == 8 && _idxC == 8))then // 2 Bars + Any     
{
   if(_slotType == 0)then {_ret = 8000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 16000;};   //average joe's
   if(_slotType == 2)then {_ret = 32000;};  //high roller's
};

if((_idxA == 7 && _idxB == 7 && _idxC != 7) or (_idxA == 7 && _idxB != 7 && _idxC == 7) or (_idxA != 7 && _idxB == 7 && _idxC == 7))then // 2 Sevens + Any     
{
   if(_slotType == 0)then {_ret = 4000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 8000;};   //average joe's
   if(_slotType == 2)then {_ret = 16000;};  //high roller's
};

if((_idxA == 6 && _idxB == 6 && _idxC != 6) or (_idxA == 6 && _idxB != 6 && _idxC == 6) or (_idxA != 6 && _idxB == 6 && _idxC == 6))then // 2 Sevens + Any     
{
   if(_slotType == 0)then {_ret = 2000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 4000;};   //average joe's
   if(_slotType == 2)then {_ret = 8000;};  //high roller's
};

if((_idxA == 5 && _idxB == 5 && _idxC != 5) or (_idxA == 5 && _idxB != 5 && _idxC == 5) or (_idxA != 5 && _idxB == 5 && _idxC == 5))then // 2 Sevens + Any     
{
   if(_slotType == 0)then {_ret = 1000;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 2000;};   //average joe's
   if(_slotType == 2)then {_ret = 4000;};  //high roller's
};

if((_idxA == 4 && _idxB == 4 && _idxC != 4) or (_idxA == 4 && _idxB != 4 && _idxC == 4) or (_idxA != 4 && _idxB == 4 && _idxC == 4))then // 2 Sevens + Any     
{
   if(_slotType == 0)then {_ret = 900;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 1800;};   //average joe's
   if(_slotType == 2)then {_ret = 3600;};  //high roller's
};

if((_idxA == 3 && _idxB == 3 && _idxC != 3) or (_idxA == 3 && _idxB != 3 && _idxC == 3) or (_idxA != 3 && _idxB == 3 && _idxC == 3))then // 2 Bells + Any     
{
   if(_slotType == 0)then {_ret = 800;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 1600;};   //average joe's
   if(_slotType == 2)then {_ret = 3200;};  //high roller's
};

if((_idxA == 2 && _idxB == 2 && _idxC != 2) or (_idxA == 2 && _idxB != 2 && _idxC == 2) or (_idxA != 2 && _idxB == 2 && _idxC == 2))then // 2 Grapes + Any     
{
   if(_slotType == 0)then {_ret = 700;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 1400;};   //average joe's
   if(_slotType == 2)then {_ret = 2800;};  //high roller's
};

if((_idxA == 1 && _idxB == 1 && _idxC != 1) or (_idxA == 1 && _idxB != 1 && _idxC == 1) or (_idxA != 1 && _idxB == 1 && _idxC == 1))then // 2 Plums + Any     
{
   if(_slotType == 0)then {_ret = 600;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 1200;};   //average joe's
   if(_slotType == 2)then {_ret = 2400;};  //high roller's
};

if((_idxA == 0 && _idxB == 0 && _idxC != 0) or (_idxA == 0 && _idxB != 0 && _idxC == 0) or (_idxA != 0 && _idxB == 0 && _idxC == 0))then // 2 Cherrys + Any     
{
   if(_slotType == 0)then {_ret = 500;};   //penny snatcher's
   if(_slotType == 1)then {_ret = 1000;};   //average joe's
   if(_slotType == 2)then {_ret = 2000;};  //high roller's
};

_ret;