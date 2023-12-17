.class Lmiuix/animation/internal/AnimOperationInfo;
.super Ljava/lang/Object;
.source "AnimOperationInfo.java"


# instance fields
.field public final op:B

.field public final propList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field

.field public volatile sendTime:J

.field public final target:Lmiuix/animation/IAnimTarget;

.field public usedCount:I


# direct methods
.method public constructor <init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 7
    iput-byte p2, p0, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    .line 9
    iput-object p1, p0, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 11
    if-eqz p3, :cond_2a

    .line 13
    instance-of p2, p1, Lmiuix/animation/ValueTarget;

    .line 15
    if-eqz p2, :cond_2a

    .line 17
    check-cast p1, Lmiuix/animation/ValueTarget;

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object p2, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 26
    array-length p2, p3

    .line 27
    :goto_1a
    if-ge v0, p2, :cond_36

    .line 29
    aget-object p4, p3, v0

    .line 31
    iget-object v1, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 33
    invoke-virtual {p1, p4}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    .line 36
    move-result-object p4

    .line 37
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_1a

    .line 43
    :cond_2a
    if-eqz p4, :cond_33

    .line 45
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 51
    goto :goto_36

    .line 52
    :cond_33
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 55
    :cond_36
    :goto_36
    return-void
.end method


# virtual methods
.method public isUsed()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    move-result v0

    .line 12
    :goto_b
    const/4 v2, 0x1

    .line 13
    if-nez v0, :cond_13

    .line 15
    iget v0, p0, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 17
    if-lez v0, :cond_18

    .line 19
    goto :goto_17

    .line 20
    :cond_13
    iget v3, p0, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 22
    if-ne v3, v0, :cond_18

    .line 24
    :goto_17
    move v1, v2

    .line 25
    :cond_18
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "AnimOperationInfo{target="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", op="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-byte v1, p0, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", propList="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 29
    if-eqz v1, :cond_27

    .line 31
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    const/4 v1, 0x0

    .line 41
    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const/16 v1, 0x7d

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method
