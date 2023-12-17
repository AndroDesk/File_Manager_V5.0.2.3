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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    const-string p1, "mipro-normal"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->mNormalTypeface:Landroid/graphics/Typeface;

    const-string p1, "sans-serif"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->mSelectedTypeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->tv_side_bar_child_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getItemName()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->isSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->tv_side_bar_child_tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->mSelectedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_25

    :cond_1e
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->tv_side_bar_child_tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_25
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0329ff

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->tv_side_bar_child_tv:Landroid/widget/TextView;

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->detector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->detector:Landroid/view/GestureDetector;

    return-void
.end method

.method public setHover(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarChildItemView;->tv_side_bar_child_tv:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setHovered(Z)V

    :cond_7
    return-void
.end method
