.class public final Ld0/c;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Application;

.field public final synthetic b:Ld0/e$a;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ld0/e$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld0/c;->a:Landroid/app/Application;

    .line 3
    iput-object p2, p0, Ld0/c;->b:Ld0/e$a;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Ld0/c;->a:Landroid/app/Application;

    .line 3
    iget-object v1, p0, Ld0/c;->b:Ld0/e$a;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 8
    return-void
.end method
