.class Lcom/miui/maml/ActionCommand$RingModeCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RingModeCommand"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "ring_mode"

    .line 3
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p1, v0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;-><init>(Lcom/miui/maml/ActionCommand$1;)V

    .line 14
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 16
    const-string v0, "normal"

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 22
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 24
    const-string v0, "silent"

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 30
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 32
    const-string v0, "vibrate"

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 38
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 40
    invoke-virtual {p1, p2}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->build(Ljava/lang/String;)Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_43

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v0, "invalid ring mode command value: "

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    const-string p2, "ActionCommand"

    .line 65
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_43
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->click()V

    .line 11
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->getModeId()I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 19
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 25
    return-void
.end method

.method public update()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 3
    if-nez v0, :cond_16

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 13
    const-string v1, "audio"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/media/AudioManager;

    .line 21
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 25
    if-nez v0, :cond_1b

    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 35
    return-void
.end method
