library(tidyverse)
library(patchwork)
library(ggpubr)

# set working directory
setwd("C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject")

dat <- read.csv('nfl_ml_dataset_1111.csv')

dat$over_binary <- as.factor(dat$over_binary)
  

plt1 <- dat |>
  ggplot(aes(x=composite_pace_average, y=over_binary, color=over_binary)) +
  geom_violin(trim=FALSE) +
  #coord_flip() +
  geom_boxplot(width=0.25) +
  theme_fivethirtyeight() +
  labs(title='Over/Under by Composite Pace Average',
       subtitle='Over=1, Under=0',
       x='Composite Pace Average (Seconds)',
       y='Over/Under') +
  theme(legend.position='none' ) +
  theme(plot.title = element_text(size = 15, face = 'bold'),
        plot.subtitle = element_text(size = 14),
        plot.caption = element_text(size = 10),
        axis.title.x = element_text(size = 11),
        axis.title.y = element_text(size = 11))

ggsave('comp_pace_avg_violin.png', width=6, height=5, dpi='retina')


plt2 <- dat |>
  ggplot(aes(x=schedule_week, y=over_binary, color=over_binary)) +
  geom_violin(trim=FALSE) +
  #coord_flip() +
  geom_boxplot(width=0.25) +
  theme_fivethirtyeight() +
  labs(title='Over/Under by Week of the season',
       subtitle='Over=1, Under=0',
       x='Week',
       y='Over/Under') +
  theme(legend.position='none' ) +
  theme(plot.title = element_text(size = 15, face = 'bold'),
        plot.subtitle = element_text(size = 14),
        plot.caption = element_text(size = 10),
        axis.title.x = element_text(size = 11),
        axis.title.y = element_text(size = 11))

ggsave('schedule_week_violin.png', width=6, height=5, dpi='retina')


plt3 <- dat |>
  ggplot(aes(x=offense_matchup_cumulative, y=over_binary, color=over_binary)) +
  geom_violin(trim=FALSE) +
  #coord_flip() +
  geom_boxplot(width=0.25) +
  theme_fivethirtyeight() +
  labs(title='Over/Under by Cumulative Offensive DVOA Matchup',
       subtitle='Over=1, Under=0',
       x='Cumulative Offensive DVOA Matchup',
       y='Over/Under') +
  theme(legend.position='none' ) +
  theme(plot.title = element_text(size = 14, face = 'bold'),
        plot.subtitle = element_text(size = 14),
        plot.caption = element_text(size = 10),
        axis.title.x = element_text(size = 11),
        axis.title.y = element_text(size = 11))

ggsave('offense_matchup_cumulative_violin.png', width=6, height=5, dpi='retina')


plt4 <- dat |>
  ggplot(aes(x=dvoa_weighted_difference, y=over_binary, color=over_binary)) +
  geom_violin(trim=FALSE) +
  #coord_flip() +
  geom_boxplot(width=0.25) +
  theme_fivethirtyeight() +
  labs(title='Over/Under by Weighted DVOA difference',
       subtitle='Over=1, Under=0',
       x='Weighted DVOA difference',
       y='Over/Under') +
  theme(legend.position='none' ) +
  theme(plot.title = element_text(size = 15, face = 'bold'),
        plot.subtitle = element_text(size = 14),
        plot.caption = element_text(size = 10),
        axis.title.x = element_text(size = 11),
        axis.title.y = element_text(size = 11))

ggsave('weighted_dvoa_difference_violin.png', width=6, height=5, dpi='retina')


plt5 <- dat |>
  ggplot(aes(x=dvoa_offense_cumulative, y=over_binary, color=over_binary)) +
  geom_violin(trim=FALSE) +
  #coord_flip() +
  geom_boxplot(width=0.25) +
  theme_fivethirtyeight() +
  labs(title='Over/Under by Cumulative Offensive DVOA',
       subtitle='Over=1, Under=0',
       x='Cumulative Offense DVOA',
       y='Over/Under') +
  theme(legend.position='none' ) +
  theme(plot.title = element_text(size = 15, face = 'bold'),
        plot.subtitle = element_text(size = 14),
        plot.caption = element_text(size = 10),
        axis.title.x = element_text(size = 11),
        axis.title.y = element_text(size = 11))

ggsave('offense_dvoa_cumulative_violin.png', width=6, height=5, dpi='retina')


plt6 <- dat |>
  ggplot(aes(x=dvoa_defense_difference, y=over_binary, color=over_binary)) +
  geom_violin(trim=FALSE) +
  #coord_flip() +
  geom_boxplot(width=0.25) +
  theme_fivethirtyeight() +
  labs(title='Over/Under by Defensive DVOA Difference',
       subtitle='Over=1, Under=0',
       x='Defensive DVOA Difference',
       y='Over/Under') +
  theme(legend.position='none' ) +
  theme(plot.title = element_text(size = 15, face = 'bold'),
        plot.subtitle = element_text(size = 14),
        plot.caption = element_text(size = 10),
        axis.title.x = element_text(size = 11),
        axis.title.y = element_text(size = 11))

ggsave('defense_dvoa_difference_violin.png', width=6, height=5, dpi='retina')



ggarrange(plt3, plt1, plt5, plt4, plt6, plt2)
ggsave('violin_plots_6.png', width=17, height=11, dpi='retina')

ggarrange(plt3, plt5, plt1, plt2)
ggsave('violin_plots_4.png', width=12, height=10, dpi='retina')
