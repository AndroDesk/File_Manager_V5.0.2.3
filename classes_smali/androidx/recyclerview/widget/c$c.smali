.class public final Landroidx/recyclerview/widget/c$c;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/c;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Landroidx/recyclerview/widget/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/c;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Landroidx/recyclerview/widget/c$c;->b:Landroidx/recyclerview/widget/c;

    iput-object p2, p0, Landroidx/recyclerview/widget/c$c;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/c$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v2, p0, Landroidx/recyclerview/widget/c$c;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Landroidx/recyclerview/widget/c$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/recyclerview/widget/c$c;->b:Landroidx/recyclerview/widget/c;

    iget-object v0, v0, Landroidx/recyclerview/widget/c;->mAdditionsList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/recyclerview/widget/c$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
