.class Lmiuix/animation/Folme$2;
.super Landroid/os/Handler;
.source "Folme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/Folme;->createMainHandler(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
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
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_11

    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    check-cast p1, Ljava/util/List;

    .line 14
    invoke-static {p1}, Lmiuix/animation/Folme;->access$400(Ljava/util/List;)V

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-static {}, Lmiuix/animation/Folme;->access$300()V

    .line 21
    invoke-static {v1}, Lmiuix/animation/Folme;->access$000(Z)V

    .line 24
    return-void
.end method
