.class public Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;
.super Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
.source "HorizontalRecyclerView.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private enableSpringBack(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_15

    instance-of v1, v0, Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1, p1}, Lmiuix/springback/view/SpringBackLayout;->setEnabled(Z)V

    :cond_10
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    :cond_15
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    goto :goto_15

    :cond_d
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    goto :goto_15

    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    :goto_15
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_a

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    goto :goto_e

    :cond_a
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    :goto_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    goto :goto_15

    :cond_d
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    goto :goto_15

    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    :goto_15
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
