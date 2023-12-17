.class Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabSelectorRunnable"
.end annotation


# instance fields
.field private mPosition:I

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    .line 11
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mPosition:I

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move-object v0, v1

    .line 14
    :goto_d
    if-nez v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 19
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mPosition:I

    .line 21
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1b

    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 35
    move-result v4

    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 39
    move-result v2

    .line 40
    sub-int/2addr v4, v2

    .line 41
    div-int/lit8 v4, v4, 0x2

    .line 43
    sub-int/2addr v3, v4

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v3, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 48
    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 50
    return-void
.end method
