.class public Lmiuix/animation/utils/EaseManager$EaseStyle;
.super Ljava/lang/Object;
.source "EaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/EaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EaseStyle"
.end annotation


# instance fields
.field public volatile factors:[F

.field public final parameters:[D

.field public stopAtTarget:Z

.field public final style:I


# direct methods
.method public varargs constructor <init>(I[F)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [D

    .line 7
    fill-array-data v0, :array_14

    .line 10
    iput-object v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 12
    iput p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 14
    iput-object p2, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    .line 16
    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager$EaseStyle;->setParameters(Lmiuix/animation/utils/EaseManager$EaseStyle;[D)V

    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_14
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private static setParameters(Lmiuix/animation/utils/EaseManager$EaseStyle;[D)V
    .registers 4

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_a

    .line 5
    :cond_4
    iget v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 7
    invoke-static {v0}, Lmiuix/animation/styles/PropertyStyle;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    if-eqz v0, :cond_12

    .line 13
    iget-object p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    .line 15
    invoke-interface {v0, p0, p1}, Lmiuix/animation/physics/PhysicsOperator;->getParameters([F[D)V

    .line 18
    goto :goto_17

    .line 19
    :cond_12
    const-wide/16 v0, 0x0

    .line 21
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 24
    :goto_17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 13
    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 15
    iget v3, p1, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 17
    if-ne v1, v3, :cond_1d

    .line 19
    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    .line 21
    iget-object p1, p1, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    .line 23
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([F[F)Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v0, v2

    .line 31
    :goto_1e
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    move-result v0

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    .line 24
    move-result v1

    .line 25
    add-int/2addr v1, v0

    .line 26
    return v1
.end method

.method public varargs setFactors([F)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    .line 3
    iget-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 5
    invoke-static {p0, p1}, Lmiuix/animation/utils/EaseManager$EaseStyle;->setParameters(Lmiuix/animation/utils/EaseManager$EaseStyle;[D)V

    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "EaseStyle{style="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", factors="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", parameters = "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const/16 v1, 0x7d

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
