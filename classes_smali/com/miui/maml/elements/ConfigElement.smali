.class public abstract Lcom/miui/maml/elements/ConfigElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "ConfigElement.java"


# static fields
.field public static final ATTR_DELAY:Ljava/lang/String; = "delay"

.field public static final ATTR_EASE:Ljava/lang/String; = "ease"

.field public static final ATTR_FROM_SPEED:Ljava/lang/String; = "fromSpeed"

.field public static final ATTR_ON_BEGIN:Ljava/lang/String; = "onBegin"

.field public static final ATTR_ON_COMPLETE:Ljava/lang/String; = "onComplete"

.field public static final ATTR_ON_UPDATE:Ljava/lang/String; = "onUpdate"

.field public static final ATTR_PROPERTY:Ljava/lang/String; = "property"


# instance fields
.field public mTempAnimConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mTempValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/folme/ConfigValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method private setupCallbacks(Ljava/util/Collection;Landroidx/collection/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/elements/FunctionElement;",
            ">;",
            "Landroidx/collection/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v0, Landroidx/collection/b$a;

    .line 9
    invoke-direct {v0, p2}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    .line 12
    :cond_b
    :goto_b
    invoke-virtual {v0}, Landroidx/collection/c;->hasNext()Z

    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_29

    .line 18
    invoke-virtual {v0}, Landroidx/collection/c;->next()Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, p2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 31
    move-result-object p2

    .line 32
    instance-of v1, p2, Lcom/miui/maml/elements/FunctionElement;

    .line 34
    if-eqz v1, :cond_b

    .line 36
    check-cast p2, Lcom/miui/maml/elements/FunctionElement;

    .line 38
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_b

    .line 42
    :cond_29
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public abstract evaluateConfigValue()V
.end method

.method public getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)[Lmiuix/animation/base/AnimConfig;
    .registers 15

    .line 1
    invoke-virtual {p1}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_a

    .line 8
    new-array p1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 10
    return-object p1

    .line 11
    :cond_a
    iget-object v2, p0, Lcom/miui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 16
    invoke-virtual {p0}, Lcom/miui/maml/elements/ConfigElement;->evaluateConfigValue()V

    .line 19
    iget-object v2, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v2

    .line 25
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_92

    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/miui/maml/folme/ConfigValue;

    .line 37
    new-instance v10, Lmiuix/animation/base/AnimConfig;

    .line 39
    invoke-direct {v10}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 42
    iget-object v4, v3, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/b;

    .line 44
    if-eqz v4, :cond_5c

    .line 46
    new-instance v11, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v4, v3, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/b;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    new-instance v12, Landroidx/collection/b$a;

    .line 58
    invoke-direct {v12, v4}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    .line 61
    :goto_3c
    invoke-virtual {v12}, Landroidx/collection/c;->hasNext()Z

    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_5c

    .line 67
    invoke-virtual {v12}, Landroidx/collection/c;->next()Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/String;

    .line 73
    invoke-static {v4}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_51

    .line 79
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_51
    iget-object v6, v10, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 84
    iget-wide v7, v10, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 86
    new-array v9, v1, [F

    .line 88
    move-object v4, v10

    .line 89
    invoke-virtual/range {v4 .. v9}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    .line 92
    goto :goto_3c

    .line 93
    :cond_5c
    iget-object v4, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 95
    iget-object v5, v3, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/b;

    .line 97
    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Landroidx/collection/b;)V

    .line 100
    iget-object v4, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 102
    iget-object v5, v3, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/b;

    .line 104
    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Landroidx/collection/b;)V

    .line 107
    iget-object v4, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 109
    iget-object v5, v3, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/b;

    .line 111
    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Landroidx/collection/b;)V

    .line 114
    iget-boolean v4, v3, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    .line 116
    if-eqz v4, :cond_7a

    .line 118
    iget v4, v3, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    .line 120
    invoke-virtual {v10, v4}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 123
    :cond_7a
    iget-object v4, v3, Lcom/miui/maml/folme/ConfigValue;->mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 125
    invoke-virtual {v10, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 128
    iget-wide v3, v3, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    .line 130
    invoke-virtual {v10, v3, v4}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 133
    const/4 v3, 0x1

    .line 134
    new-array v3, v3, [Lmiuix/animation/listener/TransitionListener;

    .line 136
    aput-object p1, v3, v1

    .line 138
    invoke-virtual {v10, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 141
    iget-object v3, p0, Lcom/miui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    goto :goto_18

    .line 147
    :cond_92
    iget-object p1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 152
    move-result v0

    .line 153
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 155
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 158
    move-result-object p1

    .line 159
    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    .line 161
    return-object p1
.end method

.method public isVisible()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public tick(J)V
    .registers 3

    return-void
.end method
