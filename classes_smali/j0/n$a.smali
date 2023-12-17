.class public final Lj0/n$a;
.super Ljava/lang/Thread;
.source "RequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-direct {p0, p3, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4
    iput p1, p0, Lj0/n$a;->a:I

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget v0, p0, Lj0/n$a;->a:I

    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 9
    return-void
.end method
