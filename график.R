# Создаю датафрейм базового эпизода битвы экстрасенсов(импровизированный)
battle_of_psychics <- data.frame(
  regular_episode = c(
    "все мужики в нашей деревне 'Нижние зайки' вымерли, это проклятье!(хм..они пили по 20 лет, лол неважно...)",
    "я черная вдова, мои 6 мужей (алкоголики/чел из тюрьмы/буквально больной раком и др.) умерли ни с того ни сего, как снять проклятие??",
    "все мужчины в нашей семье повесились в одном сарае",
    "меня домогался домовой",
    "у меня на балконе живет призрак бывшей жены",
    "в нашем доме поселился бес и мучает нас тем, что показывает эротические сны на потолке",
    "10-ти этажку построили на скотомогильнике",
    "к бабушке присосалась радиоактивная сущность",
    "мои карты таро убивают мужчин",
    "экстрасенсы чуть не подрались",
    "порчи не существует",
    "порча существует",
    "кто-то забирает беса себе",
    "участники забирают силы друг у друга",
    "депрессии не существует это родовое проклятье",
    "в каждой комнате дома кто-то повесился/кого-то убили",
    "нашли подклад"
  ),
  shiza_level = c(500, 196, 196, 829, 466, 396, 89, 355, 100, 556, 162, 968, 455, 366, 466, 229, 140)
)

circular_plot <- ggplot(battle_of_psychics,
                        aes(x = 1:nrow(battle_of_psychics), y = shiza_level)) +
  geom_bar(
    stat = "identity",
    fill = "lightgreen",
    width = 1,
    linetype = "dashed"
  ) +
  geom_text(aes(x = 1:nrow(battle_of_psychics), y = shiza_level, label = regular_episode),
            angle = 300,
            hjust = 0.4,
            vjust = 0.4,
            size = 5, 
            color = "red",
            alpha = 0.9
  ) +
  coord_polar(theta = "y") +
  labs(
    title = "битва экстрасенсов core",
    x = "лучше смотреть с пивом",
    y = "лол? вы серьезно?",
    subtitle = "у меня мурашки по коже...\n этого никто не знал \n и как после такого не верить",
    caption = "это на федеральном канале 💀💀💀💀💀"
  ) +
  theme_dark() +
  theme(
    plot.background = element_rect(fill = "darkred"),
    panel.background = element_rect(fill = "black"),
    plot.title = element_text(size = 24, face = "italic", color = "white", hjust = 0.5),
    plot.subtitle = element_text(size = 12, color = "lightgreen"),
    axis.title = element_text(size = 10, color = "darkred"),
    axis.text = element_text(size = 9, color = "lightgreen"),
    plot.caption = element_text(size = 8, color = "white")
  )

circular_plot