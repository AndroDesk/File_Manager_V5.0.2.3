.class public Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MirrorSidebarChildItemView.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorSidebarChildItemView"


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private mNormalTypeface:Landroid/graphics/Typeface;

.field private mSelectedTypeface:Landroid/graphics/Typeface;

.field private tv_side_bar_child_tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    const-string p1, "mipro-normal"

    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 10
    const-string p1, "sans-serif"

    .line 12
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->mSelectedTypeface:Landroid/graphics/Typeface;

    .line 18
    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->tv_side_bar_child_tv:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getItemName()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->isSelected()Z

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 17
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->isSelected()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1e

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->tv_side_bar_child_tv:Landroid/widget/TextView;

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->mSelectedTypeface:Landroid/graphics/Typeface;

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    goto :goto_25

    .line 31
    :cond_1e
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->tv_side_bar_child_tv:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    :goto_25
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0469

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->tv_side_bar_child_tv:Landroid/widget/TextView;

    .line 15
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->detector:Landroid/view/GestureDetector;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->detector:Landroid/view/GestureDetector;

    .line 3
    return-void
.end method

.method public setHover(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->tv_side_bar_child_tv:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setHovered(Z)V

    .line 8
    :cond_7
    return-void
.end method
