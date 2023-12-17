.class public Lmiuix/animation/property/ValueProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "ValueProperty.java"


# instance fields
.field private volatile mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    if-eqz p1, :cond_22

    .line 7
    const-class v0, Lmiuix/animation/property/ValueProperty;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    goto :goto_22

    .line 20
    :cond_13
    check-cast p1, Lmiuix/animation/property/ValueProperty;

    .line 22
    invoke-virtual {p0}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_22
    :goto_22
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/property/ValueProperty;->mName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Lmiuix/animation/property/ValueProperty;->mName:Ljava/lang/String;

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-super {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)F
    .registers 4

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 13
    invoke-virtual {p1, v0, v1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Float;

    .line 19
    if-eqz p1, :cond_19

    .line 21
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/property/ValueProperty;->mName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 5

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 13
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, v0, v1, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 20
    :cond_13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ValueProperty{name="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const/16 v1, 0x7d

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
