.class public final Landroidx/fragment/app/h0;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6

    .line 1
    iput p1, p0, Landroidx/fragment/app/h0;->a:I

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/h0;->b:Ljava/util/ArrayList;

    .line 5
    iput-object p3, p0, Landroidx/fragment/app/h0;->c:Ljava/util/ArrayList;

    .line 7
    iput-object p4, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    .line 9
    iput-object p5, p0, Landroidx/fragment/app/h0;->e:Ljava/util/ArrayList;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget v1, p0, Landroidx/fragment/app/h0;->a:I

    .line 4
    if-ge v0, v1, :cond_30

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/h0;->b:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/view/View;

    .line 14
    iget-object v2, p0, Landroidx/fragment/app/h0;->c:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 22
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 24
    invoke-static {v1, v2}, Lm0/g0$i;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/view/View;

    .line 35
    iget-object v2, p0, Landroidx/fragment/app/h0;->e:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/String;

    .line 43
    invoke-static {v1, v2}, Lm0/g0$i;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_30
    return-void
.end method
