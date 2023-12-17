.class public Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;
.super Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
.source "HorizontalRecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private enableSpringBack(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    :goto_4
    if-eqz v0, :cond_15

    .line 7
    instance-of v1, v0, Lmiuix/springback/view/SpringBackLayout;

    .line 9
    if-eqz v1, :cond_10

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    .line 14
    invoke-virtual {v1, p1}, Lmiuix/springback/view/SpringBackLayout;->setEnabled(Z)V

    .line 17
    :cond_10
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 20
    move-result-object v0

    .line 21
    goto :goto_4

    .line 22
    :cond_15
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_d

    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v0, v2, :cond_d

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    .line 22
    :goto_15
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4
    if-nez p1, :cond_a

    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    .line 15
    :goto_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_d

    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v0, v2, :cond_d

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/recycler/HorizontalRecyclerView;->enableSpringBack(Z)V

    .line 22
    :goto_15
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method
