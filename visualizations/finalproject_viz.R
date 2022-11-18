library(tidyverse)
library(patchwork)
library(ggpubr)
library(reshape2)

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



# Correlation Heat Map
dfcor <- dat |>
  select(dvoa_total_cumulative, dvoa_total_difference, dvoa_weighted_cumulative, dvoa_weighted_difference,
         dvoa_offense_cumulative, dvoa_offense_difference,dvoa_defense_cumulative, dvoa_defense_difference, 
         dvoa_special_cumulative, dvoa_special_difference, offense_matchup_cumulative, 
         offense_matchup_difference, composite_pace_average, composite_pace_difference)

cormat <- round(cor(dfcor),2)

melted_cormat <- melt(cormat)

# Get lower triangle of the correlation matrix
get_lower_tri<-function(cormat){
  cormat[upper.tri(cormat)] <- NA
  return(cormat)
}
# Get upper triangle of the correlation matrix
get_upper_tri <- function(cormat){
  cormat[lower.tri(cormat)]<- NA
  return(cormat)
}

upper_tri <- get_upper_tri(cormat)
upper_tri

# Melt the correlation matrix
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Heatmap
ggplot(data = melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_fivethirtyeight()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()+
  theme(legend.position='top') +
  theme(plot.title = element_text(size = 20, face = 'bold'),
        plot.subtitle = element_text(size = 14),
        plot.caption = element_text(size = 10),
        axis.title.x = element_text(size = 11, face = 'bold'),
        axis.title.y = element_text(size = 11, face = 'bold'),
        axis.text.x = element_text(size=11),
        axis.text.y = element_text(size=11)) +
  labs(title = 'Engineered Features Correlation Heatmap') +
  geom_text(aes(Var2, Var1, label = value), color = "black", size = 4) +
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.grid.major = element_blank(),
    panel.border = element_blank(),
    panel.background = element_blank(),
    axis.ticks = element_blank(),
    legend.justification = c(1, 0),
    legend.position = c(0.4, 0.75),
    legend.direction = "horizontal")+
  guides(fill = guide_colorbar(barwidth = 7, barheight = 1,
                               title.position = "top", title.hjust = 0.5))

ggsave('engineered_cor_heatmap.png', width=10, height=10, dpi='retina')
