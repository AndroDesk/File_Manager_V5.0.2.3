.class public Lcom/miui/maml/elements/AnimConfigElement;
.super Lcom/miui/maml/elements/ConfigElement;
.source "AnimConfigElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/AnimConfigElement$ConfigData;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimConfig"


# instance fields
.field private mConfigs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/AnimConfigElement$ConfigData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 13
    if-eqz v0, :cond_64

    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 31
    move-result p2

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_20
    if-ge v0, p2, :cond_64

    .line 35
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-ne v1, v2, :cond_61

    .line 46
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lorg/w3c/dom/Element;

    .line 52
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    const-string v3, "Special"

    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_61

    .line 64
    const-string v2, "name"

    .line 66
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_61

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    iget-object v4, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 83
    const-string v5, "."

    .line 85
    invoke-static {v3, v4, v5, v2}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    iget-object v3, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_61
    add-int/lit8 v0, v0, 0x1

    .line 100
    goto :goto_20

    .line 101
    :cond_64
    return-void
.end method

.method private getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/AnimConfigElement;Lcom/miui/maml/elements/AnimConfigElement$1;)V

    .line 11
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_13
    if-ge v4, v3, :cond_2d

    .line 22
    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 25
    move-result-object v5

    .line 26
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v6

    .line 34
    invoke-static {v0, v6}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 37
    move-result-object v6

    .line 38
    if-eqz v6, :cond_2a

    .line 40
    invoke-direct {p0, v1, p2, v5, v6}, Lcom/miui/maml/elements/AnimConfigElement;->updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V

    .line 43
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_13

    .line 46
    :cond_2d
    return-object v1
.end method

.method private getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/data/IndexedVariable;",
            "Landroidx/collection/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 3
    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    :goto_8
    if-eqz p1, :cond_1c

    .line 11
    instance-of v0, p1, [Ljava/lang/String;

    .line 13
    if-eqz v0, :cond_1c

    .line 15
    check-cast p1, [Ljava/lang/String;

    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_12
    if-ge v1, v0, :cond_1c

    .line 21
    aget-object v2, p1, v1

    .line 23
    invoke-virtual {p2, v2}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_12

    .line 29
    :cond_1c
    return-void
.end method

.method private getEase(Lcom/miui/maml/data/IndexedVariable;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_8

    .line 4
    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move-object p1, v0

    .line 10
    :goto_9
    if-eqz p1, :cond_33

    .line 12
    instance-of v1, p1, [D

    .line 14
    if-eqz v1, :cond_33

    .line 16
    check-cast p1, [D

    .line 18
    array-length v1, p1

    .line 19
    if-lez v1, :cond_33

    .line 21
    const/4 v1, 0x0

    .line 22
    aget-wide v1, p1, v1

    .line 24
    double-to-int v1, v1

    .line 25
    array-length v2, p1

    .line 26
    const/4 v3, 0x1

    .line 27
    sub-int/2addr v2, v3

    .line 28
    new-array v2, v2, [F

    .line 30
    array-length v4, p1

    .line 31
    :goto_1e
    if-ge v3, v4, :cond_2a

    .line 33
    add-int/lit8 v5, v3, -0x1

    .line 35
    aget-wide v6, p1, v3

    .line 37
    double-to-float v6, v6

    .line 38
    aput v6, v2, v5

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_1e

    .line 43
    :cond_2a
    :try_start_2a
    invoke-static {v1, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 46
    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_2f

    .line 47
    return-object p1

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    :cond_33
    return-object v0
.end method

.method private removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_d4

    .line 12
    goto :goto_58

    .line 13
    :sswitch_c
    const-string v0, "onUpdate"

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_15

    .line 21
    goto :goto_58

    .line 22
    :cond_15
    const/4 v1, 0x6

    .line 23
    goto :goto_58

    .line 24
    :sswitch_17
    const-string v0, "delay"

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_20

    .line 32
    goto :goto_58

    .line 33
    :cond_20
    const/4 v1, 0x5

    .line 34
    goto :goto_58

    .line 35
    :sswitch_22
    const-string v0, "fromSpeed"

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_2b

    .line 43
    goto :goto_58

    .line 44
    :cond_2b
    const/4 v1, 0x4

    .line 45
    goto :goto_58

    .line 46
    :sswitch_2d
    const-string v0, "ease"

    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_36

    .line 54
    goto :goto_58

    .line 55
    :cond_36
    const/4 v1, 0x3

    .line 56
    goto :goto_58

    .line 57
    :sswitch_38
    const-string v0, "property"

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_41

    .line 65
    goto :goto_58

    .line 66
    :cond_41
    const/4 v1, 0x2

    .line 67
    goto :goto_58

    .line 68
    :sswitch_43
    const-string v0, "onBegin"

    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_4c

    .line 76
    goto :goto_58

    .line 77
    :cond_4c
    const/4 v1, 0x1

    .line 78
    goto :goto_58

    .line 79
    :sswitch_4e
    const-string v0, "onComplete"

    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p2

    .line 85
    if-nez p2, :cond_57

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    const/4 v1, 0x0

    .line 89
    :goto_58
    const-wide/16 v2, 0x0

    .line 91
    const/4 p2, 0x0

    .line 92
    packed-switch v1, :pswitch_data_f2

    .line 95
    goto/16 :goto_d2

    .line 97
    :pswitch_60  #0x6
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 99
    if-eqz v0, :cond_69

    .line 101
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 104
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 106
    :cond_69
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 108
    if-eqz v0, :cond_d2

    .line 110
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 113
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 115
    goto :goto_d2

    .line 116
    :pswitch_73  #0x5
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 118
    if-eqz v0, :cond_d2

    .line 120
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 123
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 125
    goto :goto_d2

    .line 126
    :pswitch_7d  #0x4
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 128
    if-eqz v0, :cond_d2

    .line 130
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 133
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 135
    goto :goto_d2

    .line 136
    :pswitch_87  #0x3
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 138
    if-eqz v0, :cond_90

    .line 140
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 143
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 145
    :cond_90
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    .line 147
    if-eqz v0, :cond_d2

    .line 149
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 152
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    .line 154
    goto :goto_d2

    .line 155
    :pswitch_9a  #0x2
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 157
    if-eqz v0, :cond_a3

    .line 159
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 162
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 164
    :cond_a3
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    .line 166
    if-eqz v0, :cond_d2

    .line 168
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 171
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    .line 173
    goto :goto_d2

    .line 174
    :pswitch_ad  #0x1
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 176
    if-eqz v0, :cond_b6

    .line 178
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 181
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 183
    :cond_b6
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 185
    if-eqz v0, :cond_d2

    .line 187
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 190
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 192
    goto :goto_d2

    .line 193
    :pswitch_c0  #0x0
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 195
    if-eqz v0, :cond_c9

    .line 197
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 200
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 202
    :cond_c9
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 204
    if-eqz v0, :cond_d2

    .line 206
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 209
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 211
    :cond_d2
    :goto_d2
    return-void

    .line 212
    nop

    .line 213
    :sswitch_data_d4
    .sparse-switch
        -0x7ea0abc8 -> :sswitch_4e
        -0x50a5b1f6 -> :sswitch_43
        -0x3b32222b -> :sswitch_38
        0x2f63ee -> :sswitch_2d
        0x42432bd -> :sswitch_22
        0x5b0b983 -> :sswitch_17
        0x5cf50f88 -> :sswitch_c
    .end sparse-switch

    .line 243
    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_c0  #00000000
        :pswitch_ad  #00000001
        :pswitch_9a  #00000002
        :pswitch_87  #00000003
        :pswitch_7d  #00000004
        :pswitch_73  #00000005
        :pswitch_60  #00000006
    .end packed-switch
.end method

.method private updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V
    .registers 10

    .line 1
    const-string v0, "."

    .line 3
    invoke-static {p2, v0, p3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, -0x1

    .line 21
    sparse-switch v1, :sswitch_data_16a

    .line 24
    goto :goto_64

    .line 25
    :sswitch_18
    const-string v1, "onUpdate"

    .line 27
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p3

    .line 31
    if-nez p3, :cond_21

    .line 33
    goto :goto_64

    .line 34
    :cond_21
    const/4 v4, 0x6

    .line 35
    goto :goto_64

    .line 36
    :sswitch_23
    const-string v1, "delay"

    .line 38
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p3

    .line 42
    if-nez p3, :cond_2c

    .line 44
    goto :goto_64

    .line 45
    :cond_2c
    const/4 v4, 0x5

    .line 46
    goto :goto_64

    .line 47
    :sswitch_2e
    const-string v1, "fromSpeed"

    .line 49
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p3

    .line 53
    if-nez p3, :cond_37

    .line 55
    goto :goto_64

    .line 56
    :cond_37
    const/4 v4, 0x4

    .line 57
    goto :goto_64

    .line 58
    :sswitch_39
    const-string v1, "ease"

    .line 60
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p3

    .line 64
    if-nez p3, :cond_42

    .line 66
    goto :goto_64

    .line 67
    :cond_42
    const/4 v4, 0x3

    .line 68
    goto :goto_64

    .line 69
    :sswitch_44
    const-string v1, "property"

    .line 71
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p3

    .line 75
    if-nez p3, :cond_4d

    .line 77
    goto :goto_64

    .line 78
    :cond_4d
    const/4 v4, 0x2

    .line 79
    goto :goto_64

    .line 80
    :sswitch_4f
    const-string v1, "onBegin"

    .line 82
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result p3

    .line 86
    if-nez p3, :cond_58

    .line 88
    goto :goto_64

    .line 89
    :cond_58
    move v4, v3

    .line 90
    goto :goto_64

    .line 91
    :sswitch_5a
    const-string v1, "onComplete"

    .line 93
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result p3

    .line 97
    if-nez p3, :cond_63

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    move v4, v2

    .line 101
    :goto_64
    const-string p3, ".length"

    .line 103
    const/4 v1, 0x0

    .line 104
    packed-switch v4, :pswitch_data_188

    .line 107
    return-void

    .line 108
    :pswitch_6b  #0x6
    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 110
    if-nez v1, :cond_76

    .line 112
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 114
    invoke-direct {v1, p2, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 117
    iput-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 119
    :cond_76
    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 121
    if-nez v1, :cond_85

    .line 123
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 125
    invoke-static {p2, p3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object p2

    .line 129
    invoke-direct {v1, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 132
    iput-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 134
    :cond_85
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 136
    iget-object p1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 138
    goto/16 :goto_127

    .line 140
    :pswitch_8b  #0x5
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 142
    if-nez p3, :cond_96

    .line 144
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    .line 146
    invoke-direct {p3, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 149
    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 151
    :cond_96
    iget-object p1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 153
    goto :goto_a6

    .line 154
    :pswitch_99  #0x4
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 156
    if-nez p3, :cond_a4

    .line 158
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    .line 160
    invoke-direct {p3, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 163
    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 165
    :cond_a4
    iget-object p1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 167
    :goto_a6
    move p2, v2

    .line 168
    goto/16 :goto_12b

    .line 170
    :pswitch_a9  #0x3
    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 172
    if-nez v1, :cond_b4

    .line 174
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 176
    invoke-direct {v1, p2, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 179
    iput-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 181
    :cond_b4
    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    .line 183
    if-nez v1, :cond_c3

    .line 185
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 187
    invoke-static {p2, p3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object p2

    .line 191
    invoke-direct {v1, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 194
    iput-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    .line 196
    :cond_c3
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 198
    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    .line 200
    move-object p1, p2

    .line 201
    move p2, v3

    .line 202
    move v3, v2

    .line 203
    goto :goto_12b

    .line 204
    :pswitch_cb  #0x2
    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 206
    if-nez v1, :cond_d6

    .line 208
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 210
    invoke-direct {v1, p2, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 213
    iput-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 215
    :cond_d6
    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    .line 217
    if-nez v1, :cond_e5

    .line 219
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 221
    invoke-static {p2, p3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    move-result-object p2

    .line 225
    invoke-direct {v1, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 228
    iput-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    .line 230
    :cond_e5
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 232
    iget-object p1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    .line 234
    goto :goto_127

    .line 235
    :pswitch_ea  #0x1
    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 237
    if-nez v1, :cond_f5

    .line 239
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 241
    invoke-direct {v1, p2, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 244
    iput-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 246
    :cond_f5
    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 248
    if-nez v1, :cond_104

    .line 250
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 252
    invoke-static {p2, p3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    move-result-object p2

    .line 256
    invoke-direct {v1, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 259
    iput-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 261
    :cond_104
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 263
    iget-object p1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 265
    goto :goto_127

    .line 266
    :pswitch_109  #0x0
    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 268
    if-nez v1, :cond_114

    .line 270
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 272
    invoke-direct {v1, p2, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 275
    iput-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 277
    :cond_114
    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 279
    if-nez v1, :cond_123

    .line 281
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 283
    invoke-static {p2, p3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    move-result-object p2

    .line 287
    invoke-direct {v1, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 290
    iput-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 292
    :cond_123
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 294
    iget-object p1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 296
    :goto_127
    move-object v1, p1

    .line 297
    move-object p1, p2

    .line 298
    move p2, v2

    .line 299
    move v3, p2

    .line 300
    :goto_12b
    array-length p3, p4

    .line 301
    if-lez p3, :cond_168

    .line 303
    if-eqz v3, :cond_13b

    .line 305
    aget-object p2, p4, v2

    .line 307
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 310
    move-result-wide v2

    .line 311
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 314
    move-result-object p2

    .line 315
    goto :goto_15f

    .line 316
    :cond_13b
    if-eqz p2, :cond_14e

    .line 318
    new-array p2, p3, [D

    .line 320
    :goto_13f
    if-ge v2, p3, :cond_15f

    .line 322
    aget-object v0, p4, v2

    .line 324
    if-eqz v0, :cond_14b

    .line 326
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 329
    move-result-wide v3

    .line 330
    aput-wide v3, p2, v2

    .line 332
    :cond_14b
    add-int/lit8 v2, v2, 0x1

    .line 334
    goto :goto_13f

    .line 335
    :cond_14e
    new-array p2, p3, [Ljava/lang/String;

    .line 337
    :goto_150
    if-ge v2, p3, :cond_15f

    .line 339
    aget-object v0, p4, v2

    .line 341
    if-eqz v0, :cond_15c

    .line 343
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 346
    move-result-object v0

    .line 347
    aput-object v0, p2, v2

    .line 349
    :cond_15c
    add-int/lit8 v2, v2, 0x1

    .line 351
    goto :goto_150

    .line 352
    :cond_15f
    :goto_15f
    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 355
    if-eqz v1, :cond_168

    .line 357
    int-to-double p1, p3

    .line 358
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 361
    :cond_168
    return-void

    .line 362
    nop

    .line 363
    :sswitch_data_16a
    .sparse-switch
        -0x7ea0abc8 -> :sswitch_5a
        -0x50a5b1f6 -> :sswitch_4f
        -0x3b32222b -> :sswitch_44
        0x2f63ee -> :sswitch_39
        0x42432bd -> :sswitch_2e
        0x5b0b983 -> :sswitch_23
        0x5cf50f88 -> :sswitch_18
    .end sparse-switch

    .line 393
    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_109  #00000000
        :pswitch_ea  #00000001
        :pswitch_cb  #00000002
        :pswitch_a9  #00000003
        :pswitch_99  #00000004
        :pswitch_8b  #00000005
        :pswitch_6b  #00000006
    .end packed-switch
.end method


# virtual methods
.method public clearConfigData()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_3a

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 23
    const-string v2, "fromSpeed"

    .line 25
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 28
    const-string v2, "delay"

    .line 30
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 33
    const-string v2, "ease"

    .line 35
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 38
    const-string v2, "property"

    .line 40
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 43
    const-string v2, "onUpdate"

    .line 45
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 48
    const-string v2, "onBegin"

    .line 50
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 53
    const-string v2, "onComplete"

    .line 55
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 58
    goto :goto_a

    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 64
    return-void
.end method

.method public evaluateConfigValue()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_6e

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 28
    new-instance v2, Lcom/miui/maml/folme/ConfigValue;

    .line 30
    invoke-direct {v2}, Lcom/miui/maml/folme/ConfigValue;-><init>()V

    .line 33
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    if-eqz v3, :cond_2b

    .line 37
    invoke-virtual {v3}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 40
    move-result-wide v3

    .line 41
    double-to-long v3, v3

    .line 42
    iput-wide v3, v2, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    .line 44
    :cond_2b
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 46
    if-eqz v3, :cond_3a

    .line 48
    invoke-virtual {v3}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 51
    move-result-wide v3

    .line 52
    double-to-long v3, v3

    .line 53
    long-to-float v3, v3

    .line 54
    iput v3, v2, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    .line 56
    const/4 v3, 0x1

    .line 57
    iput-boolean v3, v2, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    .line 59
    :cond_3a
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 61
    if-eqz v3, :cond_44

    .line 63
    invoke-direct {p0, v3}, Lcom/miui/maml/elements/AnimConfigElement;->getEase(Lcom/miui/maml/data/IndexedVariable;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 66
    move-result-object v3

    .line 67
    iput-object v3, v2, Lcom/miui/maml/folme/ConfigValue;->mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 69
    :cond_44
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 71
    if-eqz v3, :cond_4d

    .line 73
    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/b;

    .line 75
    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/b;)V

    .line 78
    :cond_4d
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 80
    if-eqz v3, :cond_56

    .line 82
    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/b;

    .line 84
    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/b;)V

    .line 87
    :cond_56
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 89
    if-eqz v3, :cond_5f

    .line 91
    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/b;

    .line 93
    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/b;)V

    .line 96
    :cond_5f
    iget-object v1, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 98
    if-eqz v1, :cond_68

    .line 100
    iget-object v3, v2, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/b;

    .line 102
    invoke-direct {p0, v1, v3}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/b;)V

    .line 105
    :cond_68
    iget-object v1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    goto :goto_f

    .line 111
    :cond_6e
    return-void
.end method

.method public removeConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 9
    if-eqz p1, :cond_d

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 14
    :cond_d
    return-void
.end method

.method public updateConfigData(Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 9
    if-nez v0, :cond_15

    .line 11
    new-instance v0, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/AnimConfigElement;Lcom/miui/maml/elements/AnimConfigElement$1;)V

    .line 17
    iget-object v1, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_15
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/maml/elements/AnimConfigElement;->updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V

    .line 25
    return-void
.end method
