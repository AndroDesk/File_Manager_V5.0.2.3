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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lio/reactivex/internal/schedulers/a$c;)V
    .registers 4

    invoke-direct {p0}, Li2/i$b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/a$a;->d:Lio/reactivex/internal/schedulers/a$c;

    new-instance p1, Lm2/b;

    invoke-direct {p1}, Lm2/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/a$a;->a:Lm2/b;

    new-instance v0, Lk2/a;

    invoke-direct {v0}, Lk2/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/a$a;->b:Lk2/a;

    new-instance v1, Lm2/b;

    invoke-direct {v1}, Lm2/b;-><init>()V

    iput-object v1, p0, Lio/reactivex/internal/schedulers/a$a;->c:Lm2/b;

    invoke-virtual {v1, p1}, Lm2/b;->c(Lk2/b;)Z

    invoke-virtual {v1, v0}, Lm2/b;->c(Lk2/b;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 11

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/a$a;->e:Z

    if-eqz v0, :cond_7

    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_7
    iget-object v0, p0, Lio/reactivex/internal/schedulers/a$a;->d:Lio/reactivex/internal/schedulers/a$c;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/a$a;->b:Lk2/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ls2/c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lm2/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 9

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/a$a;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lio/reactivex/internal/schedulers/a$a;->d:Lio/reactivex/internal/schedulers/a$c;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/schedulers/a$a;->a:Lm2/b;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Ls2/c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lm2/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    return-void
.end method

.method public final dispose()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/a$a;->e:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/a$a;->e:Z

    iget-object v0, p0, Lio/reactivex/internal/schedulers/a$a;->c:Lm2/b;

    invoke-virtual {v0}, Lm2/b;->dispose()V

    :cond_c
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/a$a;->e:Z

    return v0
.end method
