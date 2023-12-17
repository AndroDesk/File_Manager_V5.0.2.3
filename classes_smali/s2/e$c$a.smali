.class public final Ls2/e$c$a;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ls2/e$b;

.field public final synthetic b:Ls2/e$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ls2/e$c;Ls2/e$b;)V
    .registers 3

    iput-object p1, p0, Ls2/e$c$a;->b:Ls2/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls2/e$c$a;->a:Ls2/e$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Ls2/e$c$a;->a:Ls2/e$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ls2/e$b;->d:Z

    iget-object v0, p0, Ls2/e$c$a;->b:Ls2/e$c;

    iget-object v0, v0, Ls2/e$c;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Ls2/e$c$a;->a:Ls2/e$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
