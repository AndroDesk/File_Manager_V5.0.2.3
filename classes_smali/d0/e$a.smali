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
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ld0/e$a;->d:Z

    .line 7
    iput-boolean v0, p0, Ld0/e$a;->e:Z

    .line 9
    iput-boolean v0, p0, Ld0/e$a;->f:Z

    .line 11
    iput-object p1, p0, Ld0/e$a;->b:Landroid/app/Activity;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 16
    move-result p1

    .line 17
    iput p1, p0, Ld0/e$a;->c:I

    .line 19
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ld0/e$a;->b:Landroid/app/Activity;

    .line 3
    if-ne v0, p1, :cond_a

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Ld0/e$a;->b:Landroid/app/Activity;

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Ld0/e$a;->e:Z

    .line 11
    :cond_a
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Ld0/e$a;->e:Z

    .line 3
    if-eqz v0, :cond_42

    .line 5
    iget-boolean v0, p0, Ld0/e$a;->f:Z

    .line 7
    if-nez v0, :cond_42

    .line 9
    iget-boolean v0, p0, Ld0/e$a;->d:Z

    .line 11
    if-nez v0, :cond_42

    .line 13
    iget-object v0, p0, Ld0/e$a;->a:Ljava/lang/Object;

    .line 15
    iget v1, p0, Ld0/e$a;->c:I

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    :try_start_12
    sget-object v4, Ld0/e;->c:Ljava/lang/reflect/Field;

    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    if-ne v4, v0, :cond_3b

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 30
    move-result v0

    .line 31
    if-eq v0, v1, :cond_21

    .line 33
    goto :goto_3b

    .line 34
    :cond_21
    sget-object v0, Ld0/e;->b:Ljava/lang/reflect/Field;

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    sget-object v0, Ld0/e;->g:Landroid/os/Handler;

    .line 42
    new-instance v1, Ld0/d;

    .line 44
    invoke-direct {v1, p1, v4}, Ld0/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_33

    .line 50
    move v2, v3

    .line 51
    goto :goto_3b

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    const-string v0, "ActivityRecreator"

    .line 55
    const-string v1, "Exception while fetching field values"

    .line 57
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_3b
    :goto_3b
    if-eqz v2, :cond_42

    .line 62
    iput-boolean v3, p0, Ld0/e$a;->f:Z

    .line 64
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Ld0/e$a;->a:Ljava/lang/Object;

    .line 67
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

    .line 1
    iget-object v0, p0, Ld0/e$a;->b:Landroid/app/Activity;

    .line 3
    if-ne v0, p1, :cond_7

    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Ld0/e$a;->d:Z

    .line 8
    :cond_7
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
