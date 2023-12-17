.class public Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MirrorSidebarItemView.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorSidebarItemView"


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private mExpandView:Landroid/view/View;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsShow:Z

.field private mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mIcon:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getIconResId()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mName:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getItemName()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->isSelected()Z

    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 26
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE_SIDE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 32
    if-ne v0, v1, :cond_2f

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->isExpand()Z

    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->updateExpandIcon(Z)V

    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    .line 50
    const/16 v0, 0x8

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :goto_36
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0208

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mIcon:Landroid/widget/ImageView;

    .line 15
    const v0, 0x7f0a0209

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mName:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0a01d2

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    .line 35
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->detector:Landroid/view/GestureDetector;

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
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->detector:Landroid/view/GestureDetector;

    .line 3
    return-void
.end method

.method public setHover(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mIcon:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setHovered(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public updateExpandIcon(Z)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mIsShow:Z

    .line 3
    if-eq v0, p1, :cond_40

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    .line 7
    const/high16 v1, 0x43340000  # 180.0f

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez p1, :cond_d

    .line 12
    move v3, v1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v3, v2

    .line 15
    :goto_e
    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    .line 18
    const/4 v0, 0x1

    .line 19
    new-array v3, v0, [Landroid/view/View;

    .line 21
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    .line 23
    const/4 v5, 0x0

    .line 24
    aput-object v4, v3, v5

    .line 26
    invoke-static {v3}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 29
    new-array v3, v0, [Landroid/view/View;

    .line 31
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    .line 33
    aput-object v4, v3, v5

    .line 35
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x2

    .line 44
    new-array v4, v4, [Ljava/lang/Object;

    .line 46
    sget-object v6, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    .line 48
    aput-object v6, v4, v5

    .line 50
    if-eqz p1, :cond_34

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v1, v2

    .line 54
    :goto_35
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    move-result-object v1

    .line 58
    aput-object v1, v4, v0

    .line 60
    invoke-interface {v3, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 63
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mIsShow:Z

    .line 65
    :cond_40
    return-void
.end method
