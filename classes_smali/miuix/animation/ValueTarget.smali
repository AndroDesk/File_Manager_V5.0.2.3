.class public Lmiuix/animation/ValueTarget;
.super Lmiuix/animation/IAnimTarget;
.source "ValueTarget.java"


# static fields
.field private static final DEFAULT_MIN_VALUE:F = 0.002f

.field public static sCreator:Lmiuix/animation/ITargetCreator;


# instance fields
.field private mMaxType:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTargetObj:Lmiuix/animation/property/ValueTargetObject;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiuix/animation/ValueTarget$1;

    invoke-direct {v0}, Lmiuix/animation/ValueTarget$1;-><init>()V

    sput-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/animation/ValueTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Lmiuix/animation/IAnimTarget;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lmiuix/animation/ValueTarget;->mMaxType:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lmiuix/animation/property/ValueTargetObject;

    if-nez p1, :cond_18

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_18
    invoke-direct {v0, p1}, Lmiuix/animation/property/ValueTargetObject;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lmiuix/animation/ValueTarget$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/animation/ValueTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private isPredefinedProperty(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lmiuix/animation/property/ValueProperty;

    if-nez v0, :cond_f

    instance-of v0, p1, Lmiuix/animation/property/ViewProperty;

    if-nez v0, :cond_f

    instance-of p1, p1, Lmiuix/animation/property/ColorProperty;

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method


# virtual methods
.method public clean()V
    .registers 1

    return-void
.end method

.method public createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiuix/animation/property/FloatProperty;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_f

    const-class v0, Ljava/lang/Integer;

    if-ne p2, v0, :cond_9

    goto :goto_f

    :cond_9
    new-instance p2, Lmiuix/animation/property/ValueProperty;

    invoke-direct {p2, p1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    goto :goto_14

    :cond_f
    :goto_f
    new-instance p2, Lmiuix/animation/property/IntValueProperty;

    invoke-direct {p2, p1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    :goto_14
    return-object p2
.end method

.method public getDefaultMinVisible()F
    .registers 2

    const v0, 0x3b03126f  # 0.002f

    return v0
.end method

.method public getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;
    .registers 3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lmiuix/animation/ValueTarget;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    return-object p1
.end method

.method public getIntValue(Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getIntValueProperty(Ljava/lang/String;)Lmiuix/animation/property/IIntValueProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result p1

    return p1
.end method

.method public getIntValue(Lmiuix/animation/property/IIntValueProperty;)I
    .registers 4

    invoke-direct {p0, p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiuix/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1a

    const p1, 0x7fffffff

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1e
    return p1

    :cond_1f
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getIntValueProperty(Ljava/lang/String;)Lmiuix/animation/property/IIntValueProperty;
    .registers 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lmiuix/animation/ValueTarget;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    check-cast p1, Lmiuix/animation/property/IIntValueProperty;

    return-object p1
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .registers 3

    instance-of v0, p1, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v0, :cond_b

    instance-of v0, p1, Lmiuix/animation/property/ColorProperty;

    if-nez v0, :cond_b

    const/high16 p1, 0x3f800000  # 1.0f

    return p1

    :cond_b
    invoke-super {p0, p1}, Lmiuix/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public getTargetObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)F
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiuix/animation/property/FloatProperty;)F
    .registers 4

    invoke-direct {p0, p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_1a

    const p1, 0x7f7fffff  # Float.MAX_VALUE

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_1e
    return p1

    :cond_1f
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public getVelocity(Ljava/lang/String;)D
    .registers 4

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v0

    return-wide v0
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0}, Lmiuix/animation/property/ValueTargetObject;->isValid()Z

    move-result v0

    return v0
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getIntValueProperty(Ljava/lang/String;)Lmiuix/animation/property/IIntValueProperty;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/ValueTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    return-void
.end method

.method public setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V
    .registers 5

    invoke-direct {p0, p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiuix/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_1f

    :cond_16
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    :goto_1f
    return-void
.end method

.method public setValue(Ljava/lang/String;F)V
    .registers 3

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/ValueTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    return-void
.end method

.method public setValue(Lmiuix/animation/property/FloatProperty;F)V
    .registers 5

    invoke-direct {p0, p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_1f

    :cond_16
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :goto_1f
    return-void
.end method

.method public setVelocity(Ljava/lang/String;D)V
    .registers 4

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    return-void
.end method
