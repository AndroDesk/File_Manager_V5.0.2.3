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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTransformer(Landroidx/viewpager2/widget/OriginalViewPager2$k;)V
    .registers 3

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTransformer(Landroidx/viewpager2/widget/OriginalViewPager2$k;)V
    .registers 3

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .registers 5

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/OriginalViewPager2$k;

    invoke-interface {v1, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2$k;->transformPage(Landroid/view/View;F)V

    goto :goto_6

    :cond_16
    return-void
.end method
