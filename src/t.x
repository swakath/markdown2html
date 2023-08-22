{   if( $1->length() > 6){
                                if( $1->substr(0,3) == "<p>" && 
                                    $1->substr($1->length()-4,4) == "<\\p>"){
                                    $$ = new std::string(*$1 + *$2);
                                        delete $1;
                                        delete $2;
                                }
                                else{
                                    std::string* temp;

                                    temp = new std::string("<p>" + *$1 + "<\\p>");
                                    $$ = new std::string(*temp + *$2);
                                    delete $1;
                                    delete $2;
                                    delete temp;
                                }
                            }    
                            else{ 
                                std::string* temp;
                                temp = new std::string("<p>" + *$1 + "<\\p>");
                                $$ = new std::string(*temp + *$2);
                                delete $1;
                                delete $2;
                                delete temp;
                            }
                        }   

%left AITALIC UITALIC ABOLD UBOLD PARA LINEBREAK TEXT



if( $1->length() > 6){
                                if( $1->substr(0,3) == "<p>" && 
                                    $1->substr($1->length()-4,4) == "<\\p>"){
                                    $$ = new std::string(*$1 + *$2);
                                    delete $1;
                                    delete $2;
                                }
                                else{
                                    std::string* temp;
                                    temp = new std::string("<p>" + *$1 + "<\\p>");
                                    $$ = new std::string(*temp + *$1 );
                                    delete $1;
                                    delete $2;
                                    delete temp;
                                }
                            }    
                            else{ 
                                std::string* temp;
                                    temp = new std::string("<p>" + *$2 + "<\\p>");
                                    $$ = new std::string(*$1 + *temp );
                                    delete $1;
                                    delete $2;
                                    delete temp;
                            }