.class public final Landroidx/activity/result/c;
.super Landroidx/activity/result/b;
.source "ActivityResultRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lg/a;

.field public final synthetic c:Landroidx/activity/result/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/activity/result/e;Ljava/lang/String;Lg/a;)V
    .registers 4

    iput-object p1, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/e;

    iput-object p2, p0, Landroidx/activity/result/c;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/c;->b:Lg/a;

    invoke-direct {p0}, Landroidx/activity/result/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/e;

    iget-object v0, v0, Landroidx/activity/result/e;->c:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/activity/result/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2e

    iget-object v1, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/e;

    iget-object v1, v1, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/activity/result/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_17
    iget-object v1, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/e;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Landroidx/activity/result/c;->b:Lg/a;

    invoke-virtual {v1, v0, v2, p1}, Landroidx/activity/result/e;->b(ILg/a;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p1

    iget-object v0, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/e;

    iget-object v0, v0, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/activity/result/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    throw p1

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/activity/result/c;->b:Lg/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
