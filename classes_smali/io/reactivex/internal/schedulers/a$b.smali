.class public final Lio/reactivex/internal/schedulers/a$b;
.super Ljava/lang/Object;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lio/reactivex/internal/schedulers/a$c;

.field public c:J


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lio/reactivex/internal/schedulers/a$b;->a:I

    .line 6
    new-array v0, p1, [Lio/reactivex/internal/schedulers/a$c;

    .line 8
    iput-object v0, p0, Lio/reactivex/internal/schedulers/a$b;->b:[Lio/reactivex/internal/schedulers/a$c;

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    if-ge v0, p1, :cond_18

    .line 13
    iget-object v1, p0, Lio/reactivex/internal/schedulers/a$b;->b:[Lio/reactivex/internal/schedulers/a$c;

    .line 15
    new-instance v2, Lio/reactivex/internal/schedulers/a$c;

    .line 17
    invoke-direct {v2, p2}, Lio/reactivex/internal/schedulers/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 20
    aput-object v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_a

    .line 25
    :cond_18
    return-void
.end method
