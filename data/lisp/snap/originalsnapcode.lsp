(
    (receiveInteraction [clicked]) 
    ("switch _ _ _" 
        (ring 
            ("Menu GNOS")
        ) value 
        ("case _ _" 
            (= 
                (get value) 
                ("Menu list (item # _ )" 1)
            ) 
            (stop [all])
        ) 
        ("case _ _" 
            (= 
                (get value) 
                ("Menu list (item # _ )" 2)
            ) 
            ($flag-2-0-255-0)
        ) 
        ("case _ _" 
            (= 
                (get value) 
                ("Menu list (item # _ )" 3)
            ) 
            (run 
                (cmd 
                    ("switch _ _ _" 
                        (ring 
                            ("prompt _ _" Explorer 
                                ("submenu _ _" D GNOS 
                                    ($Username-2.4) Test.app
                                )
                            )
                        ) v1 
                        ("case _ _" 
                            (= 
                                (get v1) GNOS
                            ) 
                            (tell "Sprite(3)" 
                                (cmd 
                                    (BSOD)
                                )
                            )
                        ) 
                        ("case _ _" 
                            (= 
                                (get v1) 
                                ($Username-2.4)
                            ) 
                            ("Notify _" "There are you")
                        ) 
                        ("case _ _" 
                            (= 
                                (get v1) Test.app
                            ) 
                            ("Notify _" "Hello world!")
                        )
                    )
                )
            )
        ) 
        ("case _ _" 
            (= 
                (get value) 
                ("Menu list (item # _ )" 4)
            ) 
            (scene "Dont make a sound" __shout__go__)
        ) 
        ("case _ _" 
            (= 
                (get value) 
                ("Menu list (item # _ )" 5)
            ) (
            ("Notify _" "You need a text file (examples: json, txt, xml and other...)") 
            (var a b) 
            (set a 
                ($file-2.4)
            ) 
            ("switch _ _ _" 
                (ring 
                    ("prompt _ _" Time? "5 secs" "30 secs" "1 min" "5 min" "10 min")
                ) value 
                ("case _ _" 
                    (= 
                        (get value) "5 secs"
                    ) 
                    (set b 5)
                ) 
                ("case _ _" 
                    (= 
                        (get value) "30 secs"
                    ) 
                    (set b 30)
                ) 
                ("case _ _" 
                    (= 
                        (get value) "1 min"
                    ) 
                    (set b 60)
                ) 
                ("case _ _" 
                    (= 
                        (get value) "5 min"
                    ) 
                    (set b 300)
                ) 
                ("case _ _" 
                    (= 
                        (get value) "10 min"
                    ) 
                    (set b 600)
                )
            ) 
            (ifElse 
                ("is _ a _ file?" 
                    (get a) any
                ) 
                (tell dsaf 
                    (cmd 
                        (sayFor 
                            ("read file _ as _" 
                                (get a) text
                            ) 30
                        )
                    )
                ) 
                ("Warning Notify _" "Not a file of text")
            )
        )
        )
    )
)
