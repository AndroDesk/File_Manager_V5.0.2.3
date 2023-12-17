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
.method public constructor <init>(Landroidx/activity/result/e;Ljava/lang/String;Lg/a;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/e;

    .line 3
    iput-object p2, p0, Landroidx/activity/result/c;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Landroidx/activity/result/c;->b:Lg/a;

    .line 7
    invoke-direct {p0}, Landroidx/activity/result/b;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/e;

    .line 3
    iget-object v0, v0, Landroidx/activity/result/e;->c:Ljava/util/HashMap;

    .line 5
    iget-object v1, p0, Landroidx/activity/result/c;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 13
    if-eqz v0, :cond_2e

    .line 15
    iget-object v1, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/e;

    .line 17
    iget-object v1, v1, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    .line 19
    iget-object v2, p0, Landroidx/activity/result/c;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :try_start_17
    iget-object v1, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/e;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v0

    .line 30
    iget-object v2, p0, Landroidx/activity/result/c;->b:Lg/a;

    .line 32
    invoke-virtual {v1, v0, v2, p1}, Landroidx/activity/result/e;->b(ILg/a;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23

    .line 35
    return-void

    .line 36
    :catch_23
    move-exception p1

    .line 37
    iget-object v0, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/e;

    .line 39
    iget-object v0, v0, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    .line 41
    iget-object v1, p0, Landroidx/activity/result/c;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    throw p1

    .line 47
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    const-string v1, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    .line 51
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Landroidx/activity/result/c;->b:Lg/a;

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, " and input "

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string p1, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    throw v0
.end method
