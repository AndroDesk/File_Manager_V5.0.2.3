.class public final Lmiuix/androidbasewidget/widget/CompositePageTransformer;
.super Ljava/lang/Object;
.source "CompositePageTransformer.java"

# interfaces
.implements Landroidx/viewpager2/widget/OriginalViewPager2$k;


# instance fields
.field private final mTransformers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager2/widget/OriginalViewPager2$k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public addTransformer(Landroidx/viewpager2/widget/OriginalViewPager2$k;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public removeTransformer(Landroidx/viewpager2/widget/OriginalViewPager2$k;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/viewpager2/widget/OriginalViewPager2$k;

    .line 19
    invoke-interface {v1, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2$k;->transformPage(Landroid/view/View;F)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method
