## @knitr  analysis-setup  
library(ggplot2)
library(magrittr)
individual <- readr::read_csv(here::here("data", "individual.csv")) %>%
    dplyr::select(stem_diameter, height, growth_form)

## @knitr  analysis-filter-data  
analysis_df <- individual %>%
    dplyr::filter(!is.na(growth_form), 
                  growth_form != "liana") 

## @knitr  analysis-set-factor-levels  
gf_levels <- table(analysis_df$growth_form) %>% 
    sort(decreasing = TRUE) %>% 
    names()
analysis_df %<>% 
    dplyr::mutate(growth_form = factor(growth_form, 
                                       levels = gf_levels))

## @knitr  analysis-fig1-barplot 
analysis_df %>%
ggplot(aes(y = growth_form, colour = growth_form, 
           fill = growth_form)) +
    geom_bar(alpha = 0.5, show.legend = FALSE)

## @knitr  analysis-fg2-violinplots 
analysis_df %>%
    tidyr::pivot_longer(cols = c(stem_diameter, height), 
                        names_to = "var",
                        values_to = "value") %>%
    ggplot(aes(x = log(value), y = growth_form, colour = growth_form, fill = growth_form)) +
    geom_violin(alpha = 0.5, trim = T, show.legend = FALSE) +
    geom_boxplot(alpha = 0.7, show.legend = FALSE) +
    facet_grid(~var)

## @knitr analysis-lm-overall
lm_overall <- lm(log(stem_diameter) ~ log(height), analysis_df) 
lm_overall %>%
    broom::glance()
lm_overall %>%
    broom::tidy()

## @knitr analysis-lm-fig3-overall 
analysis_df %>%
    ggplot(aes(x = log(height), y = log(stem_diameter))) +
    geom_point(alpha = 0.2) +
    geom_smooth(method = "lm")

## @knitr  analysis-lm-growth
lm_growth <- lm(log(stem_diameter) ~ log(height) * growth_form, analysis_df) 
lm_growth %>%
    broom::glance()
lm_growth %>%
    broom::tidy()

## @knitr analysis-lm-fig4-growth 
analysis_df %>%
    ggplot(aes(x = log(height), y = log(stem_diameter), colour = growth_form)) +
    geom_point(alpha = 0.1) +
    geom_smooth(method = "lm") 
