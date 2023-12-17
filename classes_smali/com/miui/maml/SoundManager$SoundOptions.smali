.class public Lcom/miui/maml/SoundManager$SoundOptions;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundOptions"
.end annotation


# instance fields
.field public mKeepCur:Z

.field public mLoop:Z

.field public mVolume:F


# direct methods
.method public constructor <init>(ZZF)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    .line 6
    iput-boolean p2, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mLoop:Z

    .line 8
    const/4 p1, 0x0

    .line 9
    cmpg-float p2, p3, p1

    .line 11
    if-gez p2, :cond_f

    .line 13
    iput p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    .line 15
    goto :goto_1a

    .line 16
    :cond_f
    const/high16 p1, 0x3f800000  # 1.0f

    .line 18
    cmpl-float p2, p3, p1

    .line 20
    if-lez p2, :cond_18

    .line 22
    iput p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    iput p3, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    .line 27
    :goto_1a
    return-void
.end method
