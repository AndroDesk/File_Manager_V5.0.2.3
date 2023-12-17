.class public final Ld0/e$a;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroid/app/Activity;

.field public final c:I

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld0/e$a;->d:Z

    iput-boolean v0, p0, Ld0/e$a;->e:Z

    iput-boolean v0, p0, Ld0/e$a;->f:Z

    iput-object p1, p0, Ld0/e$a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Ld0/e$a;->c:I

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Ld0/e$a;->b:Landroid/app/Activity;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Ld0/e$a;->b:Landroid/app/Activity;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld0/e$a;->e:Z

    :cond_a
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 7

    iget-boolean v0, p0, Ld0/e$a;->e:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Ld0/e$a;->f:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Ld0/e$a;->d:Z

    if-nez v0, :cond_42

    iget-object v0, p0, Ld0/e$a;->a:Ljava/lang/Object;

    iget v1, p0, Ld0/e$a;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_12
    sget-object v4, Ld0/e;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3b

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq v0, v1, :cond_21

    goto :goto_3b

    :cond_21
    sget-object v0, Ld0/e;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ld0/e;->g:Landroid/os/Handler;

    new-instance v1, Ld0/d;

    invoke-direct {v1, p1, v4}, Ld0/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_33

    move v2, v3

    goto :goto_3b

    :catchall_33
    move-exception p1

    const-string v0, "ActivityRecreator"

    const-string v1, "Exception while fetching field values"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3b
    :goto_3b
    if-eqz v2, :cond_42

    iput-boolean v3, p0, Ld0/e$a;->f:Z

    const/4 p1, 0x0

    iput-object p1, p0, Ld0/e$a;->a:Ljava/lang/Object;

    :cond_42
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Ld0/e$a;->b:Landroid/app/Activity;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld0/e$a;->d:Z

    :cond_7
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
