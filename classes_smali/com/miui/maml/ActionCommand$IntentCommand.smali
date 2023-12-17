.class Lcom/miui/maml/ActionCommand$IntentCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;
    }
.end annotation


# static fields
.field private static final TAG_FALLBACK:Ljava/lang/String; = "Fallback"

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

.field private mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentInfo:Lcom/miui/maml/util/IntentInfo;

.field private mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

.field private mIntentVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 6
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 8
    new-instance v1, Lcom/miui/maml/util/IntentInfo;

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, p2, v2}, Lcom/miui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    .line 17
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 19
    const-string v1, "broadcast"

    .line 21
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 28
    move-result v2

    .line 29
    const-string v3, "type"

    .line 31
    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    if-nez v2, :cond_68

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2b

    .line 43
    goto :goto_68

    .line 44
    :cond_2b
    const-string v1, "service"

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_38

    .line 52
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 54
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 56
    goto :goto_6c

    .line 57
    :cond_38
    const-string v1, "activity"

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_43

    .line 65
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 67
    goto :goto_6c

    .line 68
    :cond_43
    const-string v0, "var"

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_6c

    .line 76
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 78
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 80
    const-string v0, "intentVar"

    .line 82
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_6c

    .line 92
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 94
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 97
    move-result-object v2

    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-direct {v1, v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 102
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 104
    goto :goto_6c

    .line 105
    :cond_68
    :goto_68
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 107
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 109
    :cond_6c
    :goto_6c
    const/4 v0, -0x1

    .line 110
    const-string v1, "flags"

    .line 112
    invoke-static {p2, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFlags:I

    .line 118
    const-string v0, "activityOption"

    .line 120
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_83

    .line 130
    const/4 v0, 0x0

    .line 131
    goto :goto_8d

    .line 132
    :cond_83
    new-instance v1, Lcom/miui/maml/ActionCommand$ObjVar;

    .line 134
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 137
    move-result-object v2

    .line 138
    invoke-direct {v1, v0, v2}, Lcom/miui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    .line 141
    move-object v0, v1

    .line 142
    :goto_8d
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

    .line 144
    const-string v0, "Fallback"

    .line 146
    invoke-static {p2, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 149
    move-result-object p2

    .line 150
    if-eqz p2, :cond_9e

    .line 152
    new-instance v0, Lcom/miui/maml/CommandTrigger;

    .line 154
    invoke-direct {v0, p2, p1}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 157
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 159
    :cond_9e
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 3
    if-eqz v0, :cond_c1

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 7
    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 10
    :try_start_9
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    .line 12
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result v1

    .line 18
    aget v0, v0, v1

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_42

    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_37

    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq v0, v1, :cond_2c

    .line 29
    const/4 v1, 0x4

    .line 30
    if-eq v0, v1, :cond_21

    .line 32
    goto/16 :goto_c1

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 36
    if-eqz v0, :cond_c1

    .line 38
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 40
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 43
    goto/16 :goto_c1

    .line 45
    :cond_2c
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 51
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    goto/16 :goto_c1

    .line 56
    :cond_37
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 62
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    goto/16 :goto_c1

    .line 67
    :cond_42
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

    .line 69
    if-eqz v0, :cond_4d

    .line 71
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/os/Bundle;

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    const/4 v0, 0x0

    .line 79
    :goto_4e
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 86
    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 89
    const/high16 v3, 0x10000

    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_70

    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 100
    move-result v1

    .line 101
    if-lez v1, :cond_70

    .line 103
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 109
    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 112
    goto :goto_c1

    .line 113
    :cond_70
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 115
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_83

    .line 125
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 127
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    goto :goto_9d

    .line 132
    :cond_83
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 134
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_a7

    .line 148
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 150
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    :goto_9d
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 161
    move-result-object v2

    .line 162
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 164
    invoke-static {v2, v1, v3, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->PreloadedAppPolicy_installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_a6} :catch_a8

    .line 167
    goto :goto_c1

    .line 168
    :cond_a7
    return-void

    .line 169
    :catch_a8
    move-exception v0

    .line 170
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 172
    const-string v2, "ActionCommand"

    .line 174
    if-eqz v1, :cond_ba

    .line 176
    const-string v0, "fail to send Intent, fallback..."

    .line 178
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 183
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 186
    goto :goto_c1

    .line 187
    :cond_ba
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_c1
    :goto_c1
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    .line 8
    :cond_7
    return-void
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 7
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1d

    .line 17
    iget-object v1, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1d

    .line 25
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 27
    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->set(Lcom/miui/maml/util/Task;)V

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 32
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2a

    .line 42
    return-void

    .line 43
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    .line 45
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 52
    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 55
    iget v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFlags:I

    .line 57
    const/4 v1, -0x1

    .line 58
    if-eq v0, v1, :cond_41

    .line 60
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 62
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    goto :goto_4e

    .line 66
    :cond_41
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 68
    sget-object v1, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 70
    if-ne v0, v1, :cond_4e

    .line 72
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 74
    const/high16 v1, 0x34000000

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 81
    if-eqz v0, :cond_55

    .line 83
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 86
    :cond_55
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->pause()V

    .line 8
    :cond_7
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->resume()V

    .line 8
    :cond_7
    return-void
.end method
