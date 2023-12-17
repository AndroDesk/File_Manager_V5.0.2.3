.class public final Landroidx/activity/e;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/a$a;

.field public final synthetic c:Landroidx/activity/ComponentActivity$b;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity$b;ILg/a$a;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/activity/e;->c:Landroidx/activity/ComponentActivity$b;

    .line 3
    iput p2, p0, Landroidx/activity/e;->a:I

    .line 5
    iput-object p3, p0, Landroidx/activity/e;->b:Lg/a$a;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/activity/e;->c:Landroidx/activity/ComponentActivity$b;

    .line 3
    iget v1, p0, Landroidx/activity/e;->a:I

    .line 5
    iget-object v2, p0, Landroidx/activity/e;->b:Lg/a$a;

    .line 7
    iget-object v2, v2, Lg/a$a;->a:Ljava/lang/Object;

    .line 9
    iget-object v3, v0, Landroidx/activity/result/e;->b:Ljava/util/HashMap;

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 21
    if-nez v1, :cond_17

    .line 23
    goto :goto_3c

    .line 24
    :cond_17
    iget-object v3, v0, Landroidx/activity/result/e;->f:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/activity/result/e$a;

    .line 32
    if-eqz v3, :cond_32

    .line 34
    iget-object v3, v3, Landroidx/activity/result/e$a;->a:Landroidx/activity/result/a;

    .line 36
    if-nez v3, :cond_26

    .line 38
    goto :goto_32

    .line 39
    :cond_26
    iget-object v0, v0, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3c

    .line 47
    invoke-interface {v3, v2}, Landroidx/activity/result/a;->onActivityResult(Ljava/lang/Object;)V

    .line 50
    goto :goto_3c

    .line 51
    :cond_32
    :goto_32
    iget-object v3, v0, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 53
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 56
    iget-object v0, v0, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_3c
    :goto_3c
    return-void
.end method
