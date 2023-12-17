.class Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LaunchAction"
.end annotation


# instance fields
.field public mCommand:Lcom/miui/maml/ActionCommand;

.field public mConfigTaskLoaded:Z

.field public mIntentInfo:Lcom/miui/maml/util/IntentInfo;

.field public mTrigger:Lcom/miui/maml/CommandTrigger;

.field public final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lcom/miui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private performTask()Landroid/content/Intent;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    iget-boolean v2, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 9
    if-nez v2, :cond_28

    .line 11
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 13
    iget-object v2, v2, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v2, v0}, Lcom/miui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_25

    .line 25
    iget-object v2, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_25

    .line 33
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 35
    invoke-virtual {v2, v0}, Lcom/miui/maml/util/IntentInfo;->set(Lcom/miui/maml/util/Task;)V

    .line 38
    :cond_25
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 41
    :cond_28
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 43
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_35

    .line 53
    return-object v1

    .line 54
    :cond_35
    new-instance v0, Landroid/content/Intent;

    .line 56
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 61
    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 64
    const/high16 v1, 0x34000000

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 18
    return-void
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 15
    :cond_e
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->pause()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->pause()V

    .line 15
    :cond_e
    return-void
.end method

.method public perform()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->performTask()Landroid/content/Intent;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 12
    if-eqz v0, :cond_11

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 25
    :cond_18
    :goto_18
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public resume()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->resume()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->resume()V

    .line 15
    :cond_e
    return-void
.end method
