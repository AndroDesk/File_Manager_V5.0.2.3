.class Lmiuix/animation/controller/StateHelper;
.super Ljava/lang/Object;
.source "StateHelper.java"


# static fields
.field public static final DEFAULT_INT_PROPERTY:Lmiuix/animation/property/IntValueProperty;

.field public static final DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiuix/animation/property/ValueProperty;

    const-string v1, "defaultProperty"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/controller/StateHelper;->DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;

    new-instance v0, Lmiuix/animation/property/IntValueProperty;

    const-string v1, "defaultIntProperty"

    invoke-direct {v0, v1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/controller/StateHelper;->DEFAULT_INT_PROPERTY:Lmiuix/animation/property/IntValueProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addConfigToLink(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p2, Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p2, Lmiuix/animation/base/AnimConfig;

    new-array v0, v1, [Z

    invoke-virtual {p1, p2, v0}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    const/4 p1, 0x1

    return p1

    :cond_e
    instance-of v0, p2, Lmiuix/animation/base/AnimConfigLink;

    if-eqz v0, :cond_19

    check-cast p2, Lmiuix/animation/base/AnimConfigLink;

    new-array v0, v1, [Z

    invoke-virtual {p1, p2, v0}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfigLink;[Z)V

    :cond_19
    return v1
.end method

.method private varargs addProperty(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;I[Ljava/lang/Object;)I
    .registers 8

    const/4 v0, 0x1

    if-eqz p3, :cond_18

    invoke-direct {p0, p4, p5}, Lmiuix/animation/controller/StateHelper;->getPropertyValue(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-direct {p0, p2, p3, v1}, Lmiuix/animation/controller/StateHelper;->addPropertyValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    add-int/2addr p4, v0

    invoke-direct {p0, p1, p3, p4, p5}, Lmiuix/animation/controller/StateHelper;->setInitVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v0, 0x2

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :cond_19
    :goto_19
    return v0
.end method

.method private addPropertyValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p3, Ljava/lang/Integer;

    if-nez v0, :cond_f

    instance-of v1, p3, Ljava/lang/Float;

    if-nez v1, :cond_f

    instance-of v1, p3, Ljava/lang/Double;

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    instance-of v1, p2, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v1, :cond_1c

    invoke-direct {p0, p3, v0}, Lmiuix/animation/controller/StateHelper;->toInt(Ljava/lang/Object;Z)I

    move-result p3

    int-to-double v0, p3

    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    goto :goto_24

    :cond_1c
    invoke-direct {p0, p3, v0}, Lmiuix/animation/controller/StateHelper;->toFloat(Ljava/lang/Object;Z)F

    move-result p3

    float-to-double v0, p3

    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :goto_24
    const/4 p1, 0x1

    return p1
.end method

.method private checkAndSetAnimConfig(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z
    .registers 9

    instance-of v0, p2, Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x1

    if-nez v0, :cond_36

    instance-of v0, p2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v0, :cond_a

    goto :goto_36

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1b
    if-ge v3, v0, :cond_30

    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lmiuix/animation/controller/StateHelper;->addConfigToLink(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    if-eqz v4, :cond_2a

    goto :goto_2c

    :cond_2a
    move v4, v2

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v4, v1

    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_30
    return v4

    :cond_31
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/StateHelper;->addConfigToLink(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_36
    :goto_36
    invoke-virtual {p1}, Lmiuix/animation/base/AnimConfigLink;->getHead()Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/StateHelper;->setTempConfig(Lmiuix/animation/base/AnimConfig;Ljava/lang/Object;)V

    return v1
.end method

.method private getProperty(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;
    .registers 6

    instance-of v0, p2, Lmiuix/animation/property/FloatProperty;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v1, p2

    check-cast v1, Lmiuix/animation/property/FloatProperty;

    goto :goto_26

    :cond_9
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_20

    instance-of v0, p1, Lmiuix/animation/ValueTarget;

    if-eqz v0, :cond_20

    if-eqz p3, :cond_17

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :cond_17
    check-cast p1, Lmiuix/animation/ValueTarget;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lmiuix/animation/ValueTarget;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    goto :goto_26

    :cond_20
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_26

    sget-object v1, Lmiuix/animation/controller/StateHelper;->DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;

    :cond_26
    :goto_26
    return-object v1
.end method

.method private varargs getPropertyValue(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    array-length v0, p2

    if-ge p1, v0, :cond_6

    aget-object p1, p2, p1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return-object p1
.end method

.method private isDefaultProperty(Lmiuix/animation/property/FloatProperty;)Z
    .registers 3

    sget-object v0, Lmiuix/animation/controller/StateHelper;->DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;

    if-eq p1, v0, :cond_b

    sget-object v0, Lmiuix/animation/controller/StateHelper;->DEFAULT_INT_PROPERTY:Lmiuix/animation/property/IntValueProperty;

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method private varargs setInitVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;I[Ljava/lang/Object;)Z
    .registers 7

    array-length v0, p4

    const/4 v1, 0x0

    if-lt p3, v0, :cond_5

    return v1

    :cond_5
    aget-object p3, p4, p3

    instance-of p4, p3, Ljava/lang/Float;

    if-eqz p4, :cond_17

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    float-to-double p3, p3

    invoke-virtual {p1, p2, p3, p4}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    const/4 p1, 0x1

    return p1

    :cond_17
    return v1
.end method

.method private varargs setPropertyAndValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;Ljava/lang/Object;I[Ljava/lang/Object;)I
    .registers 14

    invoke-direct {p0, p3, p4}, Lmiuix/animation/controller/StateHelper;->checkAndSetAnimConfig(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1f

    invoke-direct {p0, p1, p4, p5}, Lmiuix/animation/controller/StateHelper;->getProperty(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-direct {p0, v3}, Lmiuix/animation/controller/StateHelper;->isDefaultProperty(Lmiuix/animation/property/FloatProperty;)Z

    move-result p3

    if-eqz p3, :cond_13

    goto :goto_15

    :cond_13
    add-int/lit8 p6, p6, 0x1

    :goto_15
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/StateHelper;->addProperty(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;I[Ljava/lang/Object;)I

    move-result p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-lez p1, :cond_24

    add-int/2addr p6, p1

    goto :goto_26

    :cond_24
    add-int/lit8 p6, p6, 0x1

    :goto_26
    return p6
.end method

.method private setTempConfig(Lmiuix/animation/base/AnimConfig;Ljava/lang/Object;)V
    .registers 5

    instance-of v0, p2, Lmiuix/animation/listener/TransitionListener;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    check-cast p2, Lmiuix/animation/listener/TransitionListener;

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    goto :goto_19

    :cond_10
    instance-of v0, p2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v0, :cond_19

    check-cast p2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    :cond_19
    :goto_19
    return-void
.end method

.method private toFloat(Ljava/lang/Object;Z)F
    .registers 3

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    goto :goto_10

    :cond_a
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_10
    return p1
.end method

.method private toInt(Ljava/lang/Object;Z)I
    .registers 3

    if-eqz p2, :cond_9

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_10

    :cond_9
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    :goto_10
    return p1
.end method


# virtual methods
.method public varargs parse(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)V
    .registers 14

    array-length v0, p4

    if-nez v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    aget-object v0, p4, v0

    invoke-virtual {p2}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_f
    move v7, v0

    :goto_10
    array-length v0, p4

    if-ge v7, v0, :cond_32

    aget-object v5, p4, v7

    add-int/lit8 v0, v7, 0x1

    array-length v1, p4

    if-ge v0, v1, :cond_1d

    aget-object v1, p4, v0

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    move-object v6, v1

    instance-of v1, v5, Ljava/lang/String;

    if-eqz v1, :cond_28

    instance-of v1, v6, Ljava/lang/String;

    if-eqz v1, :cond_28

    goto :goto_f

    :cond_28
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lmiuix/animation/controller/StateHelper;->setPropertyAndValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v7

    goto :goto_10

    :cond_32
    return-void
.end method
