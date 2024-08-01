====================
サンプル
====================

テーブルの例
====================

.. list-table::
	:header-rows: 1
	:widths: 20 80

	* - Version
	  - 内容
	* - 20240721
	  - 初版

PlantUML記法の例
====================

- シーケンス図: https://plantuml.com/ja/sequence-diagram

.. plantuml::

	@startuml
		!include skinparam.puml

		participant Participant as Foo
		actor       Actor       as Foo1
		boundary    Boundary    as Foo2
		control     Control     as Foo3
		entity      Entity      as Foo4
		database    Database    as Foo5
		collections Collections as Foo6
		queue       Queue       as Foo7
		Foo -> Foo1 : To actor 
		Foo -> Foo2 : To boundary
		Foo -> Foo3 : To control
		Foo -> Foo4 : To entity
		Foo -> Foo5 : To database
		Foo -> Foo6 : To collections
		Foo -> Foo7: To queue
	@enduml

Mermaid記法の例
====================

- シーケンスダイアグラム: https://mermaid.js.org/syntax/sequenceDiagram.html

.. mermaid::

	%%{init:{'themeVariables':{'fontFamily':'Noto Sans CJK JP'}}}%%
	sequenceDiagram
		participant Alice
		participant Bob
		Alice->>Bob: Hi Bob
		Bob->>Alice: Hi Alice

- ガントダイアグラム: https://mermaid.js.org/syntax/gantt.html

.. mermaid::

	%%{init:{'themeVariables':{'fontFamily':'Noto Sans CJK JP'}}}%%
	gantt
		title A Gantt Diagram
		dateFormat YYYY-MM-DD
		section Section
			A task          :a1, 2014-01-01, 30d
			Another task    :after a1, 20d
		section Another
			Task in Another :2014-01-12, 12d
			another task    :24d
