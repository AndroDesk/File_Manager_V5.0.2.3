.class public final Lio/reactivex/internal/schedulers/a$a;
.super Li2/i$b;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lm2/b;

.field public final b:Lk2/a;

.field public final c:Lm2/b;

.field public final d:Lio/reactivex/internal/schedulers/a$c;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/internal/schedulers/a$c;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Li2/i$b;-><init>()V

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/schedulers/a$a;->d:Lio/reactivex/internal/schedulers/a$c;

    .line 6
    new-instance p1, Lm2/b;

    .line 8
    invoke-direct {p1}, Lm2/b;-><init>()V

    .line 11
    iput-object p1, p0, Lio/reactivex/internal/schedulers/a$a;->a:Lm2/b;

    .line 13
    new-instance v0, Lk2/a;

    .line 15
    invoke-direct {v0}, Lk2/a;-><init>()V

    .line 18
    iput-object v0, p0, Lio/reactivex/internal/schedulers/a$a;->b:Lk2/a;

    .line 20
    new-instance v1, Lm2/b;

    .line 22
    invoke-direct {v1}, Lm2/b;-><init>()V

    .line 25
    iput-object v1, p0, Lio/reactivex/internal/schedulers/a$a;->c:Lm2/b;

    .line 27
    invoke-virtual {v1, p1}, Lm2/b;->c(Lk2/b;)Z

    .line 30
    invoke-virtual {v1, v0}, Lm2/b;->c(Lk2/b;)Z

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 11

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/a$a;->e:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 7
    return-object p1

    .line 8
    :cond_7
    iget-object v0, p0, Lio/reactivex/internal/schedulers/a$a;->d:Lio/reactivex/internal/schedulers/a$c;

    .line 10
    iget-object v5, p0, Lio/reactivex/internal/schedulers/a$a;->b:Lk2/a;

    .line 12
    move-object v1, p1

    .line 13
    move-wide v2, p2

    .line 14
    move-object v4, p4

    .line 15
    invoke-virtual/range {v0 .. v5}, Ls2/c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lm2/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/a$a;->e:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v1, p0, Lio/reactivex/internal/schedulers/a$a;->d:Lio/reactivex/internal/schedulers/a$c;

    .line 8
    const-wide/16 v3, 0x0

    .line 10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    iget-object v6, p0, Lio/reactivex/internal/schedulers/a$a;->a:Lm2/b;

    .line 14
    move-object v2, p1

    .line 15
    invoke-virtual/range {v1 .. v6}, Ls2/c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lm2/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    .line 18
    return-void
.end method

.method public final dispose()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/a$a;->e:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/a$a;->e:Z

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/schedulers/a$a;->c:Lm2/b;

    .line 10
    invoke-virtual {v0}, Lm2/b;->dispose()V

    .line 13
    :cond_c
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/a$a;->e:Z

    .line 3
    return v0
.end method
