.class public Lcom/miui/maml/data/BroadcastBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/BroadcastBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "BroadcastBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "BroadcastBinder"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Lcom/miui/maml/data/BroadcastBinder$1;

    .line 6
    invoke-direct {p2, p0}, Lcom/miui/maml/data/BroadcastBinder$1;-><init>(Lcom/miui/maml/data/BroadcastBinder;)V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 11
    invoke-direct {p0, p1}, Lcom/miui/maml/data/BroadcastBinder;->load(Lorg/w3c/dom/Element;)V

    .line 14
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    const-string v0, "BroadcastBinder"

    .line 3
    if-eqz p1, :cond_2c

    .line 5
    const-string v1, "action"

    .line 7
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/miui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1f

    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    .line 21
    iget-object v1, p0, Lcom/miui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    .line 23
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 31
    return-void

    .line 32
    :cond_1f
    const-string p1, "no action in broadcast binder"

    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    const-string v0, "no action in broadcast binder element"

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_2c
    const-string p1, "ContentProviderBinder node is null"

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance p1, Ljava/lang/NullPointerException;

    .line 52
    const-string v0, "node is null"

    .line 54
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1
.end method

.method private updateVariables(Landroid/content/Intent;)V
    .registers 14

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v1, "updateVariables: "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v2, "BroadcastBinder"

    .line 23
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_b6

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 44
    check-cast v3, Lcom/miui/maml/data/BroadcastBinder$Variable;

    .line 46
    const-wide/16 v4, 0x0

    .line 48
    iget v6, v3, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x1

    .line 52
    const/4 v9, 0x3

    .line 53
    const/4 v10, 0x2

    .line 54
    if-eq v6, v10, :cond_90

    .line 56
    if-eq v6, v9, :cond_74

    .line 58
    const/4 v11, 0x4

    .line 59
    if-eq v6, v11, :cond_69

    .line 61
    const/4 v11, 0x5

    .line 62
    if-eq v6, v11, :cond_5e

    .line 64
    const/4 v11, 0x6

    .line 65
    if-eq v6, v11, :cond_55

    .line 67
    const-string v6, "invalide type"

    .line 69
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v6

    .line 73
    iget-object v11, v3, Lcom/miui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    .line 75
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    goto :goto_7e

    .line 86
    :cond_55
    iget-object v4, v3, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    .line 88
    iget-wide v5, v3, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 90
    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    .line 93
    move-result-wide v4

    .line 94
    goto :goto_7e

    .line 95
    :cond_5e
    iget-object v4, v3, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    .line 97
    iget-wide v5, v3, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 99
    double-to-float v5, v5

    .line 100
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 103
    move-result v4

    .line 104
    float-to-double v4, v4

    .line 105
    goto :goto_7e

    .line 106
    :cond_69
    iget-object v4, v3, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    .line 108
    iget-wide v5, v3, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 110
    double-to-long v5, v5

    .line 111
    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 114
    move-result-wide v4

    .line 115
    long-to-double v4, v4

    .line 116
    goto :goto_7e

    .line 117
    :cond_74
    iget-object v4, v3, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    .line 119
    iget-wide v5, v3, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 121
    double-to-int v5, v5

    .line 122
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 125
    move-result v4

    .line 126
    int-to-double v4, v4

    .line 127
    :goto_7e
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 130
    new-array v6, v8, [Ljava/lang/Object;

    .line 132
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 135
    move-result-object v4

    .line 136
    aput-object v4, v6, v7

    .line 138
    const-string v4, "%f"

    .line 140
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    move-result-object v4

    .line 144
    goto :goto_9f

    .line 145
    :cond_90
    iget-object v4, v3, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    if-nez v4, :cond_9b

    .line 153
    iget-object v5, v3, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 155
    goto :goto_9c

    .line 156
    :cond_9b
    move-object v5, v4

    .line 157
    :goto_9c
    invoke-virtual {v3, v5}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 160
    :goto_9f
    new-array v5, v9, [Ljava/lang/Object;

    .line 162
    iget-object v6, v3, Lcom/miui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    .line 164
    aput-object v6, v5, v7

    .line 166
    iget-object v3, v3, Lcom/miui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    .line 168
    aput-object v3, v5, v8

    .line 170
    aput-object v4, v5, v10

    .line 172
    const-string v3, "name:%s type:%s value:%s"

    .line 174
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    move-result-object v3

    .line 178
    invoke-static {v1, v3, v2}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    goto/16 :goto_1f

    .line 183
    :cond_b6
    return-void
.end method


# virtual methods
.method public addVariable(Lcom/miui/maml/data/BroadcastBinder$Variable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public finish()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->finish()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->unregister()V

    .line 7
    return-void
.end method

.method public init()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->init()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->register()V

    .line 7
    return-void
.end method

.method public onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/BroadcastBinder$Variable;
    .registers 4

    .line 2
    new-instance v0, Lcom/miui/maml/data/BroadcastBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/data/BroadcastBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method public bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/BroadcastBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/BroadcastBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->onUpdateComplete()V

    .line 7
    return-void
.end method

.method public onRegister()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 7
    iget-object v1, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 9
    iget-object v2, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lcom/miui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->onUpdateComplete()V

    .line 21
    return-void
.end method

.method public onUnregister()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 7
    iget-object v1, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    return-void
.end method

.method public register()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->onRegister()V

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    .line 12
    return-void
.end method

.method public unregister()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->onUnregister()V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_8} :catch_8

    .line 9
    :catch_8
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    .line 12
    return-void
.end method
