.class public abstract Lcom/miui/maml/ActionCommand$StateTracker;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 10
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 14
    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 3
    const/4 v1, 0x5

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$StateTracker;->getActualState(Landroid/content/Context;)I

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_11

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p1, v0, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    return v0

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public final isTurningOn()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method public final setCurrentState(Landroid/content/Context;I)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p2, :cond_24

    .line 7
    if-eq p2, v2, :cond_1d

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq p2, v3, :cond_16

    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq p2, v3, :cond_f

    .line 15
    goto :goto_2a

    .line 16
    :cond_f
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 18
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 22
    goto :goto_2a

    .line 23
    :cond_16
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 25
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 29
    goto :goto_2a

    .line 30
    :cond_1d
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 32
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 36
    goto :goto_2a

    .line 37
    :cond_24
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 39
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 43
    :goto_2a
    if-eqz v0, :cond_5e

    .line 45
    iget-boolean p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 47
    if-nez p2, :cond_5e

    .line 49
    iget-boolean p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 51
    if-eqz p2, :cond_5e

    .line 53
    const-string p2, "ActionCommand"

    .line 55
    const-string v0, "processing deferred state change"

    .line 57
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 62
    if-eqz v0, :cond_4f

    .line 64
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 66
    if-eqz v3, :cond_4f

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4f

    .line 74
    const-string p1, "... but intended state matches, so no changes."

    .line 76
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    goto :goto_5c

    .line 80
    :cond_4f
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 82
    if-eqz p2, :cond_5c

    .line 84
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 86
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    move-result p2

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    .line 93
    :cond_5c
    :goto_5c
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 95
    :cond_5e
    return-void
.end method

.method public final toggleState(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_19

    .line 9
    if-eq v0, v2, :cond_1a

    .line 11
    const/4 v3, 0x5

    .line 12
    if-eq v0, v3, :cond_e

    .line 14
    goto :goto_1a

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    move-result v0

    .line 23
    xor-int/lit8 v1, v0, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v1, v2

    .line 27
    :cond_1a
    :goto_1a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 33
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 35
    if-eqz v0, :cond_27

    .line 37
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 39
    goto :goto_2c

    .line 40
    :cond_27
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 42
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    .line 45
    :goto_2c
    return-void
.end method
