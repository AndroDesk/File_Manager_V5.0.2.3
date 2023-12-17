.class public Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;
.super Lmiuix/animation/utils/EaseManager$EaseStyle;
.source "EaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/EaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterpolateEaseStyle"
.end annotation


# instance fields
.field public duration:J


# direct methods
.method public varargs constructor <init>(I[F)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 4
    const-wide/16 p1, 0x12c

    .line 6
    iput-wide p1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    .line 8
    return-void
.end method


# virtual methods
.method public setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "InterpolateEaseStyle{style="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", duration="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-wide v1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", factors="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const/16 v1, 0x7d

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
