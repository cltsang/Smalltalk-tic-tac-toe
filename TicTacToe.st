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
<body>A class representing player.Instance Variables	id	&lt;Object | ProtoObject&gt;	This is a variable representing the identity of the player (Player X or Player O).</body>
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
<body>A game object which holds the game board, coordinate players' moves and control game logics.Instance Variables	gameBoard	&lt;Object | ProtoObject&gt;	This is an array representing the game board.	player1	&lt;Object | ProtoObject&gt;	This is a variable representing Player X.	player2	&lt;Object | ProtoObject&gt;	This is a variable representing Player O.	turn	&lt;Object | ProtoObject&gt;	This is a variable indicating the player that should play in the current turn.</body>
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

<body package="Phase1" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>

<body package="Phase1" selector="id:game:target:">id: identity game: gameInstance target: targetInstance	^(super new) setID: identity setGame: gameInstance setTarget: targetInstance.</body>

<body package="Phase1" selector="id:">id: identity	^(super new) setID: identity.</body>
</methods>


<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="Phase1" selector="getID">getID	^ id.</body>

<body package="Phase1" selector="setGame:">setGame: gameInstance	game := gameInstance.</body>

<body package="Phase1" selector="setID:">setID: identity	id := identity.</body>

<body package="Phase1" selector="setID:setGame:setTarget:">setID: identity setGame: gameInstance setTarget: targetInstance	id := identity.	game := gameInstance.	target := targetInstance.</body>

<body package="Phase1" selector="initialize">initialize	"Initialize the player with its identity."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="Phase1" selector="nextMove">nextMove	"An abstract method to be implemented in subclasses, which returns the position of next move."	|  |	"Transcript show: 'Player nextMove'; cr."</body>
</methods>


<methods>
<class-id>TicTacToe class</class-id> <category>instance creation</category>

<body package="Phase1" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>TicTacToe</class-id> <category>initialize-release</category>

<body package="Phase1" selector="occupy:by:">occupy: index by: symbol	| occupied |	occupied := self isOccupied: index.	occupied ifFalse:		[gameBoard at: index put: symbol.].	^ occupied not.</body>

<body package="Phase1" selector="contentOfCell:">contentOfCell: index	^ (gameBoard at: index).</body>

<body package="Phase1" selector="printGameBoard">printGameBoard	"Print out the game board in the Transcript window."	|  |	Transcript		clear; space;		show: (String with: (gameBoard at: 7)), ' | ', (String with: (gameBoard at: 8)), ' | ', (String with: (gameBoard at: 9));		cr; show: '--------------'; cr; space;		show: (String with: (gameBoard at: 4)), ' | ', (String with: (gameBoard at: 5)), ' | ', (String with: (gameBoard at: 6));		cr; show: '--------------'; cr; space;		show: (String with: (gameBoard at: 1)), ' | ', (String with: (gameBoard at: 2)), ' | ', (String with: (gameBoard at: 3));		cr.</body>

<body package="Phase1" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	| x o |	super initialize.	Transcript clear.	gameBoard := #($  $  $  $  $  $  $  $  $ ) copy.	gameBoard isImmutable: false.	target := #((1 2 3) (4 5 6) (7 8 9) (1 4 7) (2 5 8) (3 6 9) (1 5 9) (3 5 7)) copy.	x := Dialog				choose: 'Player X'				labels: #('Human' 'Computer')				values: #('Human' 'Computer')				default: 'Human'.	x = 'Human'		ifTrue: [player1 := Human id: $X game: self target: target]		ifFalse: [player1 := Computer id: $X game: self target: target].	o := Dialog				choose: 'Player O'				labels: #('Human' 'Computer')				values: #('Human' 'Computer')				default: 'Human'.	o = 'Human'		ifTrue: [player2 := Human id: $O game: self target: target]		ifFalse: [player2 := Computer id: $O game: self target: target].	^self</body>

<body package="Phase1" selector="printResult">printResult	| |	Transcript cr.	(self someoneWins) ifTrue:		[Transcript show: 'Player ', (String with: (turn getID)), ' wins!'.].	(self draw) ifTrue:		[Transcript show: 'Draw Game!'].</body>

<body package="Phase1" selector="switchTurn">switchTurn	|  |	turn = player1		ifTrue: [turn := player2.]		ifFalse: [turn := player1.].</body>

<body package="Phase1" selector="someoneWins">someoneWins	| ended |	ended :=		((gameBoard at: 1) = (gameBoard at: 2) &amp; (gameBoard at: 1) = (gameBoard at: 3) &amp; (self isOccupied: 1)) | 		((gameBoard at: 4) = (gameBoard at: 5) &amp; (gameBoard at: 4) = (gameBoard at: 6) &amp; (self isOccupied: 4)) | 		((gameBoard at: 7) = (gameBoard at: 8) &amp; (gameBoard at: 7) = (gameBoard at: 9) &amp; (self isOccupied: 7)) | 		((gameBoard at: 1) = (gameBoard at: 4) &amp; (gameBoard at: 1) = (gameBoard at: 7) &amp; (self isOccupied: 1)) | 		((gameBoard at: 2) = (gameBoard at: 5) &amp; (gameBoard at: 2) = (gameBoard at: 8) &amp; (self isOccupied: 2)) | 		((gameBoard at: 3) = (gameBoard at: 6) &amp; (gameBoard at: 3) = (gameBoard at: 9) &amp; (self isOccupied: 3)) | 		((gameBoard at: 1) = (gameBoard at: 5) &amp; (gameBoard at: 1) = (gameBoard at: 9) &amp; (self isOccupied: 1)) | 		((gameBoard at: 3) = (gameBoard at: 5) &amp; (gameBoard at: 3) = (gameBoard at: 7) &amp; (self isOccupied: 3)).	^ ended.</body>

<body package="Phase1" selector="startGame">startGame	"Start a new game and play until winning/losing or draw."	| move |	turn := player2.	[(self someoneWins) | (self draw)] whileFalse: [		self switchTurn.		self printGameBoard.		move := turn nextMove.		self occupy: move by: (turn getID).	].	self printGameBoard.	self printResult.</body>

<body package="Phase1" selector="draw">draw	| |	^ ((self someoneWins not) &amp; (self isOccupied:1) &amp; (self isOccupied:2) &amp; (self isOccupied:3) &amp; (self isOccupied:4)		&amp; (self isOccupied:5) &amp; (self isOccupied:6) &amp; (self isOccupied:7) &amp; (self isOccupied:8) &amp; (self isOccupied:9)).</body>

<body package="Phase1" selector="isOccupied:">isOccupied: index	| bool |	bool := (gameBoard at: index) ~= $ .	^ (bool)</body>

<body package="Phase1" selector="opponentID:">opponentID: player	| id |	player = player1		ifTrue: [ id := player2 getID.]		ifFalse: [ id := player1 getID.].	^ id.</body>
</methods>


<methods>
<class-id>Computer</class-id> <category>initialize-release</category>

<body package="Phase1" selector="winning:">winning: symbol	| remainingIndex numOnChain |	remainingIndex := 0.	target do: [ :eachChain |		numOnChain := 0.		eachChain do: [ :eachIndex |			(game contentOfCell: eachIndex) = symbol ifTrue: [				numOnChain := numOnChain + 1.].		].		numOnChain = 2 ifTrue:[			eachChain do: [ :eachIndex |				(game isOccupied: eachIndex) ifFalse:					[ remainingIndex := eachIndex.].			].		].	].	^ remainingIndex.</body>

<body package="Phase1" selector="nextMove">nextMove	"An abstract method to be implemented in subclasses, which returns the position of next move."	| move oid bool options rand |	oid := game opponentID: self.	move := self winning: id.	move = 0 ifTrue: [		move := self winning: oid.		move = 0 ifTrue: [			bool := game isOccupied: 5.			bool				ifFalse: [move := 5.]				ifTrue:[				options := #(1 3 7 9) asOrderedCollection.				options isImmutable: false.				4 timesRepeat: [					rand := Random new next.					rand := ((rand * (options size - 1)) + 1) asInteger.					(game isOccupied: (options at: rand)) ifFalse: [						move := (options at: rand).					].					options remove: (options at: rand).				].				move = 0 ifTrue: [					options := #(2 4 6 8) asOrderedCollection.					options isImmutable: false.					4 timesRepeat: [						rand := Random new next.						rand := ((rand * (options size - 1)) + 1) asInteger.						(game isOccupied: (options at: rand)) ifFalse: [							move := (options at: rand).						].						options remove: (options at: rand).				].				]			]		]	].	^ move.</body>

<body package="Phase1" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	^self</body>
</methods>


<methods>
<class-id>Human</class-id> <category>initialize-release</category>

<body package="Phase1" selector="nextMove">nextMove	"An abstract method to be implemented in subclasses, which returns the position of next move."	| move |	move := '  '.	[move isNil not and: [(move size) = 1 and: [(move at: 1) isDigit and: [(move asNumber) &gt; 0 and: [(game isOccupied: (move asNumber)) not]]]]] whileFalse:		[move := Dialog request: 'Player ', (String with: id), ', please enter next move (1-9)' initialAnswer: '' .].	move := move asNumber.	^move.</body>

<body package="Phase1" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>



</st-source>
