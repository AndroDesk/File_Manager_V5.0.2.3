.class public abstract Li2/i$b;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v1, v2, v0}, Li2/i$b;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;

    .line 8
    return-void
.end method
