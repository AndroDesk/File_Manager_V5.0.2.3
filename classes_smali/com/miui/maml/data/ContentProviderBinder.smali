.class public Lcom/miui/maml/data/ContentProviderBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;,
        Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;,
        Lcom/miui/maml/data/ContentProviderBinder$List;,
        Lcom/miui/maml/data/ContentProviderBinder$Variable;,
        Lcom/miui/maml/data/ContentProviderBinder$Builder;,
        Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"


# instance fields
.field private volatile mAllowReg:Z

.field public mArgs:[Ljava/lang/String;

.field private mAwareChangeWhilePause:Z

.field private mChangeObserver:Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;

.field public mColumns:[Ljava/lang/String;

.field public mCountName:Ljava/lang/String;

.field private mCountVar:Lcom/miui/maml/data/IndexedVariable;

.field private mHandler:Landroid/os/Handler;

.field private mLastQueryTime:J

.field private mLastUri:Landroid/net/Uri;

.field private mList:Lcom/miui/maml/data/ContentProviderBinder$List;

.field private final mLock:Ljava/lang/Object;

.field private mNeedsRequery:Z

.field public mOrder:Ljava/lang/String;

.field private mQueryHandler:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

.field private mSystemBootCompleted:Z

.field private mUpdateInterval:I

.field private mUpdater:Ljava/lang/Runnable;

.field public mUriFormatter:Lcom/miui/maml/util/TextFormatter;

.field public mWhereFormatter:Lcom/miui/maml/util/TextFormatter;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/miui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAllowReg:Z

    .line 4
    new-instance v1, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v1, p0}, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;-><init>(Lcom/miui/maml/data/ContentProviderBinder;)V

    iput-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mChangeObserver:Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 6
    iput-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 7
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 8
    new-instance p2, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;-><init>(Lcom/miui/maml/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mQueryHandler:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

    if-eqz p1, :cond_35

    .line 9
    invoke-direct {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    :cond_35
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/data/ContentProviderBinder;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/ContentProviderBinder;->checkUpdate()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/miui/maml/data/ContentProviderBinder;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method private checkUpdate()V
    .registers 7

    .line 1
    iget v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 3
    if-gtz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 8
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    .line 19
    sub-long/2addr v0, v2

    .line 20
    iget v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 22
    mul-int/lit16 v2, v2, 0x3e8

    .line 24
    int-to-long v2, v2

    .line 25
    cmp-long v2, v0, v2

    .line 27
    if-ltz v2, :cond_21

    .line 29
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->startQuery()V

    .line 32
    const-wide/16 v0, 0x0

    .line 34
    :cond_21
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 36
    iget-object v3, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 38
    iget v4, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 40
    mul-int/lit16 v4, v4, 0x3e8

    .line 42
    int-to-long v4, v4

    .line 43
    sub-long/2addr v4, v0

    .line 44
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object v7

    .line 5
    const-string v0, "uriExp"

    .line 7
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 14
    move-result-object v5

    .line 15
    const-string v0, "uriFormatExp"

    .line 17
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 24
    move-result-object v6

    .line 25
    new-instance v8, Lcom/miui/maml/util/TextFormatter;

    .line 27
    const-string v0, "uri"

    .line 29
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    const-string v0, "uriFormat"

    .line 35
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    const-string v0, "uriParas"

    .line 41
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    move-object v0, v8

    .line 46
    move-object v1, v7

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    .line 50
    iput-object v8, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUriFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 52
    const-string v0, "columns"

    .line 54
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v1

    .line 62
    const-string v8, ","

    .line 64
    const/4 v9, 0x0

    .line 65
    if-eqz v1, :cond_44

    .line 67
    move-object v0, v9

    .line 68
    goto :goto_48

    .line 69
    :cond_44
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    :goto_48
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 75
    const-string v0, "whereExp"

    .line 77
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 84
    move-result-object v5

    .line 85
    const-string v0, "whereFormatExp"

    .line 87
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 94
    move-result-object v6

    .line 95
    new-instance v10, Lcom/miui/maml/util/TextFormatter;

    .line 97
    const-string v0, "where"

    .line 99
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    const-string v0, "whereFormat"

    .line 105
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v3

    .line 109
    const-string v0, "whereParas"

    .line 111
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v4

    .line 115
    move-object v0, v10

    .line 116
    move-object v1, v7

    .line 117
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    .line 120
    iput-object v10, p0, Lcom/miui/maml/data/ContentProviderBinder;->mWhereFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 122
    const-string v0, "args"

    .line 124
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_87

    .line 134
    move-object v0, v9

    .line 135
    goto :goto_8b

    .line 136
    :cond_87
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    :goto_8b
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 142
    const-string v0, "order"

    .line 144
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_9a

    .line 154
    move-object v0, v9

    .line 155
    :cond_9a
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 157
    const-string v0, "countName"

    .line 159
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_a9

    .line 169
    goto :goto_aa

    .line 170
    :cond_a9
    move-object v9, v0

    .line 171
    :goto_aa
    iput-object v9, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 173
    if-eqz v9, :cond_b6

    .line 175
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 177
    const/4 v1, 0x1

    .line 178
    invoke-direct {v0, v9, v7, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 181
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 183
    :cond_b6
    const/4 v0, -0x1

    .line 184
    const-string v1, "updateInterval"

    .line 186
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 189
    move-result v0

    .line 190
    iput v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 192
    if-lez v0, :cond_c8

    .line 194
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder$1;

    .line 196
    invoke-direct {v0, p0}, Lcom/miui/maml/data/ContentProviderBinder$1;-><init>(Lcom/miui/maml/data/ContentProviderBinder;)V

    .line 199
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 201
    :cond_c8
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 204
    const-string v0, "List"

    .line 206
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 209
    move-result-object v0

    .line 210
    if-eqz v0, :cond_e4

    .line 212
    :try_start_d3
    new-instance v1, Lcom/miui/maml/data/ContentProviderBinder$List;

    .line 214
    iget-object v2, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 216
    invoke-direct {v1, v0, v2}, Lcom/miui/maml/data/ContentProviderBinder$List;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 219
    iput-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mList:Lcom/miui/maml/data/ContentProviderBinder$List;
    :try_end_dc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d3 .. :try_end_dc} :catch_dd

    .line 221
    goto :goto_e4

    .line 222
    :catch_dd
    const-string v0, "ContentProviderBinder"

    .line 224
    const-string v1, "invalid List"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_e4
    :goto_e4
    const-string v0, "vigilant"

    .line 231
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    move-result-object p1

    .line 235
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 238
    move-result p1

    .line 239
    iput-boolean p1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    .line 241
    return-void
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mFinished:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-direct {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;->updateVariables(Landroid/database/Cursor;)V

    .line 8
    :cond_7
    if-eqz p1, :cond_c

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_c
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->onUpdateComplete()V

    .line 16
    return-void
.end method

.method private registerObserver(Landroid/net/Uri;Z)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mChangeObserver:Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 16
    if-eqz p2, :cond_67

    .line 18
    iget-boolean p2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAllowReg:Z

    .line 20
    if-eqz p2, :cond_67

    .line 22
    iget-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter p2

    .line 25
    :try_start_18
    iget-boolean v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAllowReg:Z

    .line 27
    if-nez v1, :cond_1e

    .line 29
    monitor-exit p2
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_64

    .line 30
    return-void

    .line 31
    :cond_1e
    const/4 v1, 0x1

    .line 32
    :try_start_1f
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mChangeObserver:Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;

    .line 34
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_24} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_24} :catch_25
    .catchall {:try_start_1f .. :try_end_24} :catchall_64

    .line 37
    goto :goto_62

    .line 38
    :catch_25
    move-exception v0

    .line 39
    :try_start_26
    const-string v1, "ContentProviderBinder"

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, "  uri:"

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    goto :goto_62

    .line 69
    :catch_44
    move-exception v0

    .line 70
    const-string v1, "ContentProviderBinder"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v0, "  uri:"

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_62
    monitor-exit p2

    .line 100
    goto :goto_67

    .line 101
    :catchall_64
    move-exception p1

    .line 102
    monitor-exit p2
    :try_end_66
    .catchall {:try_start_26 .. :try_end_66} :catchall_64

    .line 103
    throw p1

    .line 104
    :cond_67
    :goto_67
    return-void
.end method

.method private updateVariables(Landroid/database/Cursor;)V
    .registers 13

    .line 1
    const-string v0, "ContentProviderBinder"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_7

    .line 6
    move v2, v1

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 11
    move-result v2

    .line 12
    :goto_b
    iget-object v3, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 14
    if-eqz v3, :cond_13

    .line 16
    int-to-double v4, v2

    .line 17
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 20
    :cond_13
    iget-object v3, p0, Lcom/miui/maml/data/ContentProviderBinder;->mList:Lcom/miui/maml/data/ContentProviderBinder$List;

    .line 22
    if-eqz v3, :cond_1a

    .line 24
    invoke-virtual {v3, p1}, Lcom/miui/maml/data/ContentProviderBinder$List;->fill(Landroid/database/Cursor;)V

    .line 27
    :cond_1a
    if-eqz p1, :cond_132

    .line 29
    if-nez v2, :cond_20

    .line 31
    goto/16 :goto_132

    .line 33
    :cond_20
    iget-object v2, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v2

    .line 39
    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_131

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 51
    move-object v4, v3

    .line 52
    check-cast v4, Lcom/miui/maml/data/ContentProviderBinder$Variable;

    .line 54
    iget-boolean v5, v4, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    .line 56
    if-eqz v5, :cond_3a

    .line 58
    goto :goto_26

    .line 59
    :cond_3a
    const-wide/16 v5, 0x0

    .line 61
    iget v7, v4, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mRow:I

    .line 63
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_26

    .line 69
    :try_start_44
    iget-object v7, v4, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 71
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 74
    move-result v7

    .line 75
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 78
    move-result v8

    .line 79
    if-nez v8, :cond_106

    .line 81
    iget v8, v3, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 83
    const/4 v9, 0x2

    .line 84
    if-eq v8, v9, :cond_fd

    .line 86
    const/16 v9, 0x3e9

    .line 88
    const/4 v10, 0x7

    .line 89
    if-eq v8, v9, :cond_db

    .line 91
    if-eq v8, v10, :cond_db

    .line 93
    const/16 v9, 0x8

    .line 95
    if-eq v8, v9, :cond_bc

    .line 97
    const/16 v9, 0x9

    .line 99
    if-eq v8, v9, :cond_a1

    .line 101
    const/4 v9, 0x3

    .line 102
    if-eq v8, v9, :cond_98

    .line 104
    const/4 v9, 0x4

    .line 105
    if-eq v8, v9, :cond_92

    .line 107
    const/4 v9, 0x5

    .line 108
    if-eq v8, v9, :cond_8c

    .line 110
    const/4 v9, 0x6

    .line 111
    if-eq v8, v9, :cond_87

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v8, "invalide type"

    .line 120
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v8, v3, Lcom/miui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    .line 125
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v7

    .line 132
    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    goto :goto_9d

    .line 136
    :cond_87
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getDouble(I)D

    .line 139
    move-result-wide v5

    .line 140
    goto :goto_9d

    .line 141
    :cond_8c
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getFloat(I)F

    .line 144
    move-result v5

    .line 145
    float-to-double v5, v5

    .line 146
    goto :goto_9d

    .line 147
    :cond_92
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 150
    move-result-wide v5

    .line 151
    long-to-double v5, v5

    .line 152
    goto :goto_9d

    .line 153
    :cond_98
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 156
    move-result v5

    .line 157
    int-to-double v5, v5

    .line 158
    :goto_9d
    invoke-virtual {v3, v5, v6}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 161
    goto :goto_26

    .line 162
    :cond_a1
    new-instance v5, Ljava/util/ArrayList;

    .line 164
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 167
    :cond_a6
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 177
    move-result v6

    .line 178
    if-nez v6, :cond_a6

    .line 180
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v3, v5}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 187
    goto/16 :goto_26

    .line 189
    :cond_bc
    new-instance v5, Ljava/util/ArrayList;

    .line 191
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :cond_c1
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getDouble(I)D

    .line 197
    move-result-wide v8

    .line 198
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 208
    move-result v6

    .line 209
    if-nez v6, :cond_c1

    .line 211
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v3, v5}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 218
    goto/16 :goto_26

    .line 220
    :cond_db
    const/4 v5, 0x0

    .line 221
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    .line 224
    move-result-object v6

    .line 225
    if-eqz v6, :cond_e7

    .line 227
    array-length v5, v6

    .line 228
    invoke-static {v6, v1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 231
    move-result-object v5

    .line 232
    :cond_e7
    iget v6, v3, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 234
    if-ne v6, v10, :cond_f0

    .line 236
    invoke-virtual {v3, v5}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 239
    goto/16 :goto_26

    .line 241
    :cond_f0
    iget-object v3, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 243
    invoke-virtual {v4, v3}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ImageScreenElement;

    .line 246
    move-result-object v3

    .line 247
    if-eqz v3, :cond_26

    .line 249
    invoke-virtual {v3, v5}, Lcom/miui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    goto/16 :goto_26

    .line 254
    :cond_fd
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v3, v5}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 261
    goto/16 :goto_26

    .line 263
    :cond_106
    iget-object v3, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 265
    invoke-virtual {v4, v3}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->setNull(Lcom/miui/maml/ScreenElementRoot;)V
    :try_end_10b
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_10b} :catch_124
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_10b} :catch_117
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_10b} :catch_10d

    .line 268
    goto/16 :goto_26

    .line 270
    :catch_10d
    move-exception v3

    .line 271
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 274
    move-result-object v3

    .line 275
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    goto/16 :goto_26

    .line 280
    :catch_117
    const-string v3, "column does not exist: "

    .line 282
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    move-result-object v3

    .line 286
    iget-object v4, v4, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 288
    invoke-static {v3, v4, v0}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    goto/16 :goto_26

    .line 293
    :catch_124
    new-array v3, v1, [Ljava/lang/Object;

    .line 295
    const-string v4, "failed to get value from cursor"

    .line 297
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    move-result-object v3

    .line 301
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    goto/16 :goto_26

    .line 306
    :cond_131
    return-void

    .line 307
    :cond_132
    :goto_132
    iget-object p1, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 309
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 312
    move-result-object p1

    .line 313
    :goto_138
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_14c

    .line 319
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 325
    check-cast v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;

    .line 327
    iget-object v1, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 329
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->setNull(Lcom/miui/maml/ScreenElementRoot;)V

    .line 332
    goto :goto_138

    .line 333
    :cond_14c
    return-void
.end method


# virtual methods
.method public createCountVar()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_8

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 8
    goto :goto_16

    .line 9
    :cond_8
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    .line 14
    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v1, v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 21
    iput-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 23
    :goto_16
    return-void
.end method

.method public finish()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    iput-boolean v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAllowReg:Z

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1b

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/miui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    .line 14
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 16
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/ContentProviderBinder;->setBlockedColumns([Ljava/lang/String;)V

    .line 24
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->finish()V

    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception v1

    .line 29
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .line 30
    throw v1
.end method

.method public final getUriText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUriFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onContentChanged()V
    .registers 3

    .line 1
    const-string v0, "ContentProviderBinder"

    .line 3
    const-string v1, "ChangeObserver: content changed."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mFinished:Z

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mPaused:Z

    .line 15
    if-eqz v0, :cond_18

    .line 17
    iget-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    .line 19
    if-nez v0, :cond_18

    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->startQuery()V

    .line 28
    :goto_1b
    return-void
.end method

.method public onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/ContentProviderBinder$Variable;
    .registers 4

    .line 2
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method public bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/ContentProviderBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->pause()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 6
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public refresh()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->refresh()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->startQuery()V

    .line 7
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->resume()V

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 6
    if-eqz v0, :cond_b

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->startQuery()V

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    invoke-direct {p0}, Lcom/miui/maml/data/ContentProviderBinder;->checkUpdate()V

    .line 15
    :goto_e
    return-void
.end method

.method public final setBlockedColumns([Ljava/lang/String;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_14

    .line 4
    new-instance v1, Ljava/util/HashSet;

    .line 6
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    array-length v2, p1

    .line 10
    move v3, v0

    .line 11
    :goto_a
    if-ge v3, v2, :cond_15

    .line 13
    aget-object v4, p1, v3

    .line 15
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 20
    goto :goto_a

    .line 21
    :cond_14
    const/4 v1, 0x0

    .line 22
    :cond_15
    iget-object p1, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p1

    .line 28
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_36

    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 40
    check-cast v2, Lcom/miui/maml/data/ContentProviderBinder$Variable;

    .line 42
    if-eqz v1, :cond_32

    .line 44
    iget-object v3, v2, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result v3

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v3, v0

    .line 52
    :goto_33
    iput-boolean v3, v2, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    .line 54
    goto :goto_1b

    .line 55
    :cond_36
    return-void
.end method

.method public startQuery()V
    .registers 12

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mFinished:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->getUriText()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_13

    .line 12
    const-string v0, "ContentProviderBinder"

    .line 14
    const-string v1, "start query: uri null"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 20
    :cond_13
    iget-boolean v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    .line 22
    if-nez v1, :cond_28

    .line 24
    const-string v1, "sys.boot_completed"

    .line 26
    invoke-static {v1}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "1"

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    iput-boolean v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    .line 38
    if-nez v1, :cond_28

    .line 40
    return-void

    .line 41
    :cond_28
    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 44
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mQueryHandler:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

    .line 46
    const/16 v2, 0x64

    .line 48
    invoke-virtual {v1, v2}, Lcom/miui/maml/data/AsyncQueryHandler;->cancelOperation(I)V

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    move-result-object v6

    .line 55
    if-nez v6, :cond_39

    .line 57
    return-void

    .line 58
    :cond_39
    iget v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 60
    const/4 v1, -0x1

    .line 61
    if-ne v0, v1, :cond_4c

    .line 63
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    .line 65
    invoke-virtual {v6, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4c

    .line 71
    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, v6, v0}, Lcom/miui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    .line 75
    iput-object v6, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    .line 77
    :cond_4c
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mWhereFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 79
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 82
    move-result-object v8

    .line 83
    iget-object v3, p0, Lcom/miui/maml/data/ContentProviderBinder;->mQueryHandler:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

    .line 85
    const/16 v4, 0x64

    .line 87
    const/4 v5, 0x0

    .line 88
    iget-object v7, p0, Lcom/miui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 90
    iget-object v9, p0, Lcom/miui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 92
    iget-object v10, p0, Lcom/miui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 94
    invoke-virtual/range {v3 .. v10}, Lcom/miui/maml/data/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    move-result-wide v0

    .line 101
    iput-wide v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    .line 103
    invoke-direct {p0}, Lcom/miui/maml/data/ContentProviderBinder;->checkUpdate()V

    .line 106
    return-void
.end method
