.class public Lmiuix/animation/property/ColorProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "ColorProperty.java"

# interfaces
.implements Lmiuix/animation/property/IIntValueProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiuix/animation/property/FloatProperty<",
        "TT;>;",
        "Lmiuix/animation/property/IIntValueProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mColorValue:I


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
    if-eqz p1, :cond_1c

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_11

    .line 17
    goto :goto_1c

    .line 18
    :cond_11
    check-cast p1, Lmiuix/animation/property/ColorProperty;

    .line 20
    iget-object v0, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public getIntValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 7
    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    invoke-virtual {p1, v0, v1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    .line 25
    :cond_18
    iget p1, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    .line 27
    return p1
.end method

.method public getValue(Ljava/lang/Object;)F
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public setIntValue(Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iput p2, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    .line 3
    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    .line 5
    if-eqz v0, :cond_15

    .line 7
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 9
    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, v0, v1, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 22
    :cond_15
    return-void
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    return-void
.end method
