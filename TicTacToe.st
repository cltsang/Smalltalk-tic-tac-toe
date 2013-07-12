<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.8 of 2011年3月30日 on 2013年3月10日 at 下午11時49分44秒</time-stamp>


<component-created>
<name>Phase1</name> <type>package</type>
</component-created><!-- Package Phase1* -->


<component-property>
<name>Phase1</name> <type>package</type>
<property>packageName</property> <value>'Phase1'</value>
</component-property>

<class>
<name>Player</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>id target game </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Phase1</package>
</attributes>
</class>

<comment>
<class-id>Player</class-id>
<body>A class representing player.
</comment>

<class>
<name>Computer</name>
<environment>Smalltalk</environment>
<super>Player</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Phase1</package>
</attributes>
</class>

<class>
<name>TicTacToe</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>player1 player2 turn gameBoard target </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Phase1</package>
</attributes>
</class>

<comment>
<class-id>TicTacToe</class-id>
<body>A game object which holds the game board, coordinate players' moves and control game logics.
</comment>

<class>
<name>Human</name>
<environment>Smalltalk</environment>
<super>Player</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Phase1</package>
</attributes>
</class>

<methods>
<class-id>Player class</class-id> <category>instance creation</category>

<body package="Phase1" selector="new">new

<body package="Phase1" selector="id:game:target:">id: identity game: gameInstance target: targetInstance

<body package="Phase1" selector="id:">id: identity
</methods>


<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="Phase1" selector="getID">getID

<body package="Phase1" selector="setGame:">setGame: gameInstance

<body package="Phase1" selector="setID:">setID: identity

<body package="Phase1" selector="setID:setGame:setTarget:">setID: identity setGame: gameInstance setTarget: targetInstance

<body package="Phase1" selector="initialize">initialize

<body package="Phase1" selector="nextMove">nextMove
</methods>


<methods>
<class-id>TicTacToe class</class-id> <category>instance creation</category>

<body package="Phase1" selector="new">new
</methods>


<methods>
<class-id>TicTacToe</class-id> <category>initialize-release</category>

<body package="Phase1" selector="occupy:by:">occupy: index by: symbol

<body package="Phase1" selector="contentOfCell:">contentOfCell: index

<body package="Phase1" selector="printGameBoard">printGameBoard

<body package="Phase1" selector="initialize">initialize

<body package="Phase1" selector="printResult">printResult

<body package="Phase1" selector="switchTurn">switchTurn

<body package="Phase1" selector="someoneWins">someoneWins

<body package="Phase1" selector="startGame">startGame

<body package="Phase1" selector="draw">draw

<body package="Phase1" selector="isOccupied:">isOccupied: index

<body package="Phase1" selector="opponentID:">opponentID: player
</methods>


<methods>
<class-id>Computer</class-id> <category>initialize-release</category>

<body package="Phase1" selector="winning:">winning: symbol

<body package="Phase1" selector="nextMove">nextMove

<body package="Phase1" selector="initialize">initialize
</methods>


<methods>
<class-id>Human</class-id> <category>initialize-release</category>

<body package="Phase1" selector="nextMove">nextMove

<body package="Phase1" selector="initialize">initialize
</methods>



</st-source>