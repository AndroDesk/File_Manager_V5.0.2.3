.class public Lcom/miui/maml/util/IntentInfo;
.super Ljava/lang/Object;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/IntentInfo$Extra;,
        Lcom/miui/maml/util/IntentInfo$Type;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaskVariable"


# instance fields
.field private mClassNameExp:Lcom/miui/maml/data/Expression;

.field private mExtraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/util/IntentInfo$Extra;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageNameExp:Lcom/miui/maml/data/Expression;

.field private mTask:Lcom/miui/maml/util/Task;

.field private mUri:Ljava/lang/String;

.field private mUriExp:Lcom/miui/maml/data/Expression;

.field private mVariables:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    .line 11
    if-nez p1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-static {p1}, Lcom/miui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lcom/miui/maml/util/Task;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 20
    iput-object p2, p0, Lcom/miui/maml/util/IntentInfo;->mVariables:Lcom/miui/maml/data/Variables;

    .line 22
    const-string v0, "packageExp"

    .line 24
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mPackageNameExp:Lcom/miui/maml/data/Expression;

    .line 34
    const-string v0, "classExp"

    .line 36
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mClassNameExp:Lcom/miui/maml/data/Expression;

    .line 46
    const-string v0, "uri"

    .line 48
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    .line 54
    const-string v0, "uriExp"

    .line 56
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 63
    move-result-object p2

    .line 64
    iput-object p2, p0, Lcom/miui/maml/util/IntentInfo;->mUriExp:Lcom/miui/maml/data/Expression;

    .line 66
    invoke-direct {p0, p1}, Lcom/miui/maml/util/IntentInfo;->loadExtras(Lorg/w3c/dom/Element;)V

    .line 69
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mVariables:Lcom/miui/maml/data/Variables;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/util/IntentInfo;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method private loadExtras(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/util/IntentInfo$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/miui/maml/util/IntentInfo$1;-><init>(Lcom/miui/maml/util/IntentInfo;)V

    .line 6
    const-string v1, "Extra"

    .line 8
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return-object v0
.end method

.method public set(Lcom/miui/maml/util/Task;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 3
    return-void
.end method

.method public update(Landroid/content/Intent;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 6
    iget-object v0, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move-object v0, v1

    .line 10
    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_12

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 21
    if-eqz v0, :cond_19

    .line 23
    iget-object v0, v0, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move-object v0, v1

    .line 27
    :goto_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_23

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 38
    if-eqz v0, :cond_2a

    .line 40
    iget-object v0, v0, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move-object v0, v1

    .line 44
    :goto_2b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_34

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_34
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 55
    if-eqz v0, :cond_3b

    .line 57
    iget-object v0, v0, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move-object v0, v1

    .line 61
    :goto_3c
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mPackageNameExp:Lcom/miui/maml/data/Expression;

    .line 63
    if-eqz v2, :cond_44

    .line 65
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    :cond_44
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 71
    if-eqz v2, :cond_4a

    .line 73
    iget-object v1, v2, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    .line 75
    :cond_4a
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mClassNameExp:Lcom/miui/maml/data/Expression;

    .line 77
    if-eqz v2, :cond_52

    .line 79
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    :cond_52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_65

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_62

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    goto :goto_65

    .line 99
    :cond_62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    :cond_65
    :goto_65
    invoke-static {v0, v1, p1}, Lcom/miui/maml/util/CustomUtils;->replaceCameraIntentInfoOnF3M(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/miui/maml/util/IntentInfo;->mUriExp:Lcom/miui/maml/data/Expression;

    .line 109
    if-eqz v1, :cond_72

    .line 111
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    :cond_72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_7f

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 128
    :cond_7f
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    .line 130
    if-eqz v0, :cond_103

    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v0

    .line 136
    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_103

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/miui/maml/util/IntentInfo$Extra;

    .line 148
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->isConditionTrue()Z

    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_fb

    .line 154
    sget-object v2, Lcom/miui/maml/util/IntentInfo$2;->$SwitchMap$com$miui$maml$util$IntentInfo$Type:[I

    .line 156
    iget-object v3, v1, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 158
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 161
    move-result v3

    .line 162
    aget v2, v2, v3

    .line 164
    packed-switch v2, :pswitch_data_104

    .line 167
    goto :goto_87

    .line 168
    :pswitch_a7  #0x6
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    .line 175
    move-result-wide v3

    .line 176
    const-wide/16 v5, 0x0

    .line 178
    cmpl-double v1, v3, v5

    .line 180
    if-lez v1, :cond_b7

    .line 182
    const/4 v1, 0x1

    .line 183
    goto :goto_b8

    .line 184
    :cond_b7
    const/4 v1, 0x0

    .line 185
    :goto_b8
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    goto :goto_87

    .line 189
    :pswitch_bc  #0x5
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    .line 196
    move-result-wide v3

    .line 197
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 200
    goto :goto_87

    .line 201
    :pswitch_c8  #0x4
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    .line 208
    move-result-wide v3

    .line 209
    double-to-float v1, v3

    .line 210
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 213
    goto :goto_87

    .line 214
    :pswitch_d5  #0x3
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    .line 221
    move-result-wide v3

    .line 222
    double-to-long v3, v3

    .line 223
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 226
    goto :goto_87

    .line 227
    :pswitch_e2  #0x2
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    .line 234
    move-result-wide v3

    .line 235
    double-to-int v1, v3

    .line 236
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    goto :goto_87

    .line 240
    :pswitch_ef  #0x1
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getString()Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    goto :goto_87

    .line 252
    :cond_fb
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 259
    goto :goto_87

    .line 260
    :cond_103
    return-void

    .line 261
    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_ef  #00000001
        :pswitch_e2  #00000002
        :pswitch_d5  #00000003
        :pswitch_c8  #00000004
        :pswitch_bc  #00000005
        :pswitch_a7  #00000006
    .end packed-switch
.end method
