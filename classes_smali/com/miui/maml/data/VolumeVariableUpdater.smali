.class public Lcom/miui/maml/data/VolumeVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "VolumeVariableUpdater.java"


# static fields
.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field private static final SHOW_DELAY_TIME:I = 0x3e8

.field public static final VAR_VOLUME_LEVEL:Ljava/lang/String; = "volume_level"

.field public static final VAR_VOLUME_LEVEL_OLD:Ljava/lang/String; = "volume_level_old"

.field public static final VAR_VOLUME_TYPE:Ljava/lang/String; = "volume_type"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mResetType:Ljava/lang/Runnable;

.field private mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

.field private mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

.field private mVolumeType:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .registers 5

    .line 1
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/miui/maml/data/VolumeVariableUpdater$1;

    .line 8
    invoke-direct {p1, p0}, Lcom/miui/maml/data/VolumeVariableUpdater$1;-><init>(Lcom/miui/maml/data/VolumeVariableUpdater;)V

    .line 11
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 13
    new-instance p1, Landroid/os/Handler;

    .line 15
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 20
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 28
    const-string v1, "volume_level"

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 34
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 36
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 38
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 44
    const-string v1, "volume_level_old"

    .line 46
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 49
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

    .line 51
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 53
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 59
    const-string v1, "volume_type"

    .line 61
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 64
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    .line 66
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 71
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/data/VolumeVariableUpdater;)Lcom/miui/maml/data/IndexedVariable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    return-object p0
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p3, "android.media.VOLUME_CHANGED_ACTION"

    .line 7
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_4b

    .line 13
    const/4 p1, -0x1

    .line 14
    const-string p3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 16
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    move-result p1

    .line 20
    iget-object p3, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    .line 22
    int-to-double v0, p1

    .line 23
    invoke-virtual {p3, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 26
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 28
    const/4 p3, 0x0

    .line 29
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    move-result p1

    .line 33
    iget-object v0, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    int-to-double v1, p1

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 39
    const-string v0, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 41
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 44
    move-result p2

    .line 45
    if-eq p2, p1, :cond_34

    .line 47
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

    .line 49
    int-to-double p2, p2

    .line 50
    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 53
    :cond_34
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 60
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 62
    iget-object p2, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 69
    iget-object p2, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 71
    const-wide/16 v0, 0x3e8

    .line 73
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    :cond_4b
    return-void
.end method
