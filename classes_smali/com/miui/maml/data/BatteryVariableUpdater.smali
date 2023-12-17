.class public Lcom/miui/maml/data/BatteryVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "BatteryVariableUpdater.java"


# static fields
.field public static final USE_TAG:Ljava/lang/String; = "Battery"


# instance fields
.field private mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

.field private mLevel:I


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .registers 5

    .line 1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 18
    const-string v1, "battery_level"

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 24
    iput-object p1, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 26
    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p3, "android.intent.action.BATTERY_CHANGED"

    .line 7
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_2f

    .line 13
    const-string p1, "level"

    .line 15
    const/4 p3, -0x1

    .line 16
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    move-result p1

    .line 20
    if-eq p1, p3, :cond_2f

    .line 22
    iget p2, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mLevel:I

    .line 24
    if-eq p2, p1, :cond_2f

    .line 26
    iget-object p2, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 28
    const/16 p3, 0x64

    .line 30
    if-lt p1, p3, :cond_22

    .line 32
    const-wide/high16 v0, 0x4059000000000000L  # 100.0

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    int-to-double v0, p1

    .line 36
    :goto_23
    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 39
    iput p1, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mLevel:I

    .line 41
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 48
    :cond_2f
    return-void
.end method
