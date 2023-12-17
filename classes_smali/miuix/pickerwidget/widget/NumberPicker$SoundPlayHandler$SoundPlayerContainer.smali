.class Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;
.super Ljava/lang/Object;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundPlayerContainer"
.end annotation


# static fields
.field private static final INTERVAL:J = 0x32L


# instance fields
.field private mPrevPlayTime:J

.field private mRefs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundId:I

.field private mSoundPlayer:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/b;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 4
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mRefs:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker$1;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    .line 3
    if-nez v0, :cond_15

    .line 5
    new-instance v0, Landroid/media/SoundPool;

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    .line 12
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    .line 14
    sget v1, Lmiuix/pickerwidget/R$raw;->number_picker_value_change:I

    .line 16
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundId:I

    .line 22
    :cond_15
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mRefs:Ljava/util/Set;

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public play()V
    .registers 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    .line 7
    if-eqz v2, :cond_21

    .line 9
    iget-wide v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mPrevPlayTime:J

    .line 11
    sub-long v3, v0, v3

    .line 13
    const-wide/16 v5, 0x32

    .line 15
    cmp-long v3, v3, v5

    .line 17
    if-lez v3, :cond_21

    .line 19
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundId:I

    .line 21
    const/high16 v4, 0x3f800000  # 1.0f

    .line 23
    const/high16 v5, 0x3f800000  # 1.0f

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/high16 v8, 0x3f800000  # 1.0f

    .line 29
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 32
    iput-wide v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mPrevPlayTime:J

    .line 34
    :cond_21
    return-void
.end method

.method public release(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mRefs:Ljava/util/Set;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1e

    .line 13
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mRefs:Ljava/util/Set;

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1e

    .line 21
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    .line 23
    if-eqz p1, :cond_1e

    .line 25
    invoke-virtual {p1}, Landroid/media/SoundPool;->release()V

    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    .line 31
    :cond_1e
    return-void
.end method
