# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

@user = User.create(
        nom: "Sco"
        email: "alassanemmaiga07@gmail.com",
        password: "123456",
        password_confirmation: "123456",
        admin: true
      )

    @user0 = User.create(
            nom: "Lass"
            email: "notreinvite@gmail.com",
            password: "invite123456",
            password_confirmation: "invite123456"
          )

        @user1 = User.create!(
                nom: "Alasco"
                email: "alass1@gmail.com",
                password:"123456",
                password_confirmation: "123456",
                is_client: false
                admin: false,
              )
            @user2 = User.create!(
                    nom: "Maiga"
                    email: "alass2@gmail.com",
                    password:"123456",
                    password_confirmation: "123456",
                    is_client: false
                    admin: false,
                  )

                @user3 = User.create!(
                        nom: "Sido"
                        email: "alass3@gmail..com",
                        password:"123456",
                        password_confirmation: "123456",
                        is_client: false
                        admin: false,
                      )

                    @user4 = User.create!(
                            nom: "Amadou"
                            email: "ama4@gmail..com",
                            password:"123456",
                            password_confirmation: "123456",
                            is_client: true
                            admin: false,
                          )

                        @user5 = User.create!(
                                nom: "Van"
                                email: "vanpy5@gmail..com",
                                password:"123456",
                                password_confirmation: "123456",
                                is_client: true
                                admin: false,
                              )
@projet = Projet.create!(
        titre: "Premier pojet",
        contenu:"Description du premier projet",
        debut: "14/07/2021",
        fin: "12/08/2022",
        user_id: 1,
            )
            @projet1 = Projet.create!(
                titre: "Deuxième projet",
                contenu:"Deuxième projet s'est bien deroulé",
                debut: "12/09/2016",
                fin: "30/08/2020",
                user_id: 2,
                    )
                @projet2 = Projet.create!(
                    titre: "Contruction du barrage de Djénné",
                    contenu:"La construction s' est bien passé nous remercions le chef de l'etat",
                    debut: "14/07/2001",
                    fin: "08/08/2010",
                    user_id: 3,

                        )
                    @projet3 = Projet.create!(
                        nom: "Lancement d' une formation de develppement web ",
                        contenu:"La formation s'est bien deroulé merci au participant",
                        debut: "11/07/2011",
                        fin: "11/08/2012",
                        user_id: 4,
                            )
                        @projet4 = Projet.create!(
                            nom: "Sensibilisation de la population",
                            contenu:"S' est bien deroule merci Mr le ministre",
                            debut: "14/07/2021",
                            fin: "12/12/2022",
                            user_id: 5,
                                )
projet_id = ['1', '2', '3', '4', '5']

@publication = Publication.create!(
        titre: "Premier publication",
        contenu:"Description de la première publication",
        user_id: 1,
            )
            @publication1 = Publication.create!(
                titre: "Deuxième publication",
                contenu:"Deuxième publication s'est bien deroulé",
                user_id: 2,
                    )
                @publication2 = Publication.create!(
                    titre: "Contruction du barrage de Djénné",
                    contenu:"La construction s' est bien passé nous remercions le chef de l'etat",
                    user_id: 3,

                        )
                    @publication3 = Publication.create!(
                        titre: "Lancement d' une formation de develppement web ",
                        contenu:"La formation s'est bien deroulé merci au participant",
                        user_id: 4,
                            )
                        @publication4 = Publication.create!(
                            titre: "Sensibilisation de la population",
                            contenu:"S' est bien deroule merci Mr le ministre",
                            user_id: 5,
                                )
publication_id = ['1', '2', '3', '4', '5']