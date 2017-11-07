state <- state.x77
class(state)
state = as.data.frame(state)
state$`Life Exp`
str(state)
states = as.data.frame(state[,c("Murder", "Population", "Illiteracy", "Income","Frost")])
states
class(states)
v = as.data.frame(state)
v
class(v)
fit1 = lm(Murder ~ Population+Illiteracy, data=states)
fit1
fit2 = lm( Murder ~ Population+Illiteracy+Income+Frost, data=states)
fit2
summary(fit1)
summary(fit2)
anova(fit1,fit2)c("#00FFFF")
anova(fit2,fit1)c("#FFFFFF", "#0A0A0A", "#FFFFFF")
AIC(fit1,fit2)
AIC(fit2,fit1)
fit3 = lm(Murder ~ Population+Illiteracy+`Life Exp`, data=state)
fit4 = lm( Murder ~ Population+Illiteracy+Income+Frost+`Life Exp`, data=state)
anova(fit3,fit4)
