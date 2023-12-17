.class public final Lf1/f$a;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Lf1/n$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/f;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lf1/f$a;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lf1/f$a;->b:Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Lf1/n;)V
    .registers 2

    return-void
.end method

.method public final onTransitionEnd(Lf1/n;)V
    .registers 5

    .line 1
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    .line 4
    iget-object p1, p0, Lf1/f$a;->a:Landroid/view/View;

    .line 6
    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lf1/f$a;->b:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x0

    .line 18
    move v1, v0

    .line 19
    :goto_12
    if-ge v1, p1, :cond_22

    .line 21
    iget-object v2, p0, Lf1/f$a;->b:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/view/View;

    .line 29
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    return-void
.end method

.method public final onTransitionPause(Lf1/n;)V
    .registers 2

    return-void
.end method

.method public final onTransitionResume(Lf1/n;)V
    .registers 2

    return-void
.end method

.method public final onTransitionStart(Lf1/n;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    .line 4
    invoke-virtual {p1, p0}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    .line 7
    return-void
.end method
