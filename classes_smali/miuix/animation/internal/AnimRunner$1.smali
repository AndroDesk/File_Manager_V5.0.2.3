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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    goto :goto_f

    :cond_8
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->access$200()V

    goto :goto_f

    :cond_c
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->access$100()V

    :goto_f
    return-void
.end method
