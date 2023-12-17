.class public Lmiuix/animation/property/ValueTargetObject;
.super Ljava/lang/Object;
.source "ValueTargetObject.java"


# instance fields
.field private mFieldManager:Lmiuix/animation/utils/FieldManager;

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTempObj:Ljava/lang/Object;

.field private mValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/animation/utils/FieldManager;

    .line 6
    invoke-direct {v0}, Lmiuix/animation/utils/FieldManager;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mFieldManager:Lmiuix/animation/utils/FieldManager;

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lmiuix/animation/utils/CommonUtils;->isBuiltInClass(Ljava/lang/Class;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1e

    .line 28
    iput-object p1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 30
    goto :goto_25

    .line 31
    :cond_1e
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 33
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    iput-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mRef:Ljava/lang/ref/WeakReference;

    .line 38
    :goto_25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object v2

    .line 17
    if-eq v1, v2, :cond_27

    .line 19
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 21
    if-eqz v1, :cond_1b

    .line 23
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1b
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_26

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_26
    return v0

    .line 40
    :cond_27
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 42
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 44
    if-eqz v0, :cond_34

    .line 46
    iget-object p1, p1, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 48
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    return p1

    .line 53
    :cond_34
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result p1

    .line 65
    return p1
.end method

.method public getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1b

    .line 7
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 9
    if-ne v1, v0, :cond_b

    .line 11
    goto :goto_1b

    .line 12
    :cond_b
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_14

    .line 20
    goto :goto_1a

    .line 21
    :cond_14
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mFieldManager:Lmiuix/animation/utils/FieldManager;

    .line 23
    invoke-virtual {v1, v0, p1, p2}, Lmiuix/animation/utils/FieldManager;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    :goto_1a
    return-object v1

    .line 28
    :cond_1b
    :goto_1b
    iget-object p2, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 30
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public getRealObject()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 12
    :goto_b
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_14

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_21

    .line 7
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 9
    if-ne v1, v0, :cond_b

    .line 11
    goto :goto_21

    .line 12
    :cond_b
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1b

    .line 20
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mFieldManager:Lmiuix/animation/utils/FieldManager;

    .line 22
    invoke-virtual {v1, v0, p1, p2, p3}, Lmiuix/animation/utils/FieldManager;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_20

    .line 28
    :cond_1b
    iget-object p2, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 30
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_20
    return-void

    .line 34
    :cond_21
    :goto_21
    iget-object p2, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 36
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ValueTargetObject{"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "}"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
