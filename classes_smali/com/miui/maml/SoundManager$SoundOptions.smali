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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZZF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    iput-boolean p2, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mLoop:Z

    const/4 p1, 0x0

    cmpg-float p2, p3, p1

    if-gez p2, :cond_f

    iput p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_1a

    :cond_f
    const/high16 p1, 0x3f800000  # 1.0f

    cmpl-float p2, p3, p1

    if-lez p2, :cond_18

    iput p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_1a

    :cond_18
    iput p3, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    :goto_1a
    return-void
.end method
