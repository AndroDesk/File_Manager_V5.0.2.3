.class Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;
.super Landroid/os/Handler;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundPlayHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;
    }
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x0

.field private static final MSG_PLAY:I = 0x1

.field private static final MSG_RELEASE:I = 0x2

.field private static final sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;-><init>(Lmiuix/pickerwidget/widget/NumberPicker$1;)V

    .line 7
    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 6
    if-eqz v0, :cond_1c

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_16

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_e

    .line 14
    goto :goto_27

    .line 15
    :cond_e
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    .line 17
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 19
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->release(I)V

    .line 22
    goto :goto_27

    .line 23
    :cond_16
    sget-object p1, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    .line 25
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->play()V

    .line 28
    goto :goto_27

    .line 29
    :cond_1c
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    .line 31
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    check-cast v1, Landroid/content/Context;

    .line 35
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 37
    invoke-virtual {v0, v1, p1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->init(Landroid/content/Context;I)V

    .line 40
    :goto_27
    return-void
.end method

.method public init(Landroid/content/Context;I)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 5
    move-result-object p2

    .line 6
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    return-void
.end method

.method public play()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    return-void
.end method

.method public release(I)V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    return-void
.end method

.method public stop()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    return-void
.end method
