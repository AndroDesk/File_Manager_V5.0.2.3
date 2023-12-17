.class Lcom/miui/maml/ActionCommand$DataSwitchCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSwitchCommand"
.end annotation


# instance fields
.field private mApnEnable:Z

.field private mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

.field private mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    .line 3
    const-string v1, "data_state"

    .line 5
    invoke-direct {p0, p1, v1, v0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 10
    invoke-direct {p1, p2}, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 15
    invoke-static {}, Lcom/miui/maml/util/MobileDataUtils;->getInstance()Lcom/miui/maml/util/MobileDataUtils;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    .line 21
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 5
    iget-boolean v2, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    .line 7
    if-eqz v2, :cond_b

    .line 9
    xor-int/lit8 v1, v0, 0x1

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    iget-boolean v1, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 14
    :goto_d
    if-eq v0, v1, :cond_1c

    .line 16
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    .line 18
    iget-object v2, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 20
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 23
    move-result-object v2

    .line 24
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/util/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    .line 29
    :cond_1c
    return-void
.end method

.method public update()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 5
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v0, v1}, Lcom/miui/maml/util/BaseMobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 17
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 20
    return-void
.end method
