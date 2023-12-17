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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity$b;ILg/a$a;)V
    .registers 4

    iput-object p1, p0, Landroidx/activity/e;->c:Landroidx/activity/ComponentActivity$b;

    iput p2, p0, Landroidx/activity/e;->a:I

    iput-object p3, p0, Landroidx/activity/e;->b:Lg/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroidx/activity/e;->c:Landroidx/activity/ComponentActivity$b;

    iget v1, p0, Landroidx/activity/e;->a:I

    iget-object v2, p0, Landroidx/activity/e;->b:Lg/a$a;

    iget-object v2, v2, Lg/a$a;->a:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/activity/result/e;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_17

    goto :goto_3c

    :cond_17
    iget-object v3, v0, Landroidx/activity/result/e;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/activity/result/e$a;

    if-eqz v3, :cond_32

    iget-object v3, v3, Landroidx/activity/result/e$a;->a:Landroidx/activity/result/a;

    if-nez v3, :cond_26

    goto :goto_32

    :cond_26
    iget-object v0, v0, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3, v2}, Landroidx/activity/result/a;->onActivityResult(Ljava/lang/Object;)V

    goto :goto_3c

    :cond_32
    :goto_32
    iget-object v3, v0, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    :goto_3c
    return-void
.end method
