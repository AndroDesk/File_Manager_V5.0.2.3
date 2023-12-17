.class Lmiuix/animation/internal/AnimRunner$1;
.super Landroid/os/Handler;
.source "AnimRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/internal/AnimRunner;->createMainHandler(Landroid/os/Looper;)V
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
    .registers 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    if-eqz p1, :cond_c

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_8

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->access$200()V

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->access$100()V

    .line 16
    :goto_f
    return-void
.end method
