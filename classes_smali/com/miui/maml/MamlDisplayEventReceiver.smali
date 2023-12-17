.class public abstract Lcom/miui/maml/MamlDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "MamlDisplayEventReceiver.java"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract onVsync(J)V
.end method

.method public onVsync(JII)V
    .registers 5

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;->onVsync(J)V

    return-void
.end method

.method public onVsync(JJI)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;->onVsync(J)V

    return-void
.end method
