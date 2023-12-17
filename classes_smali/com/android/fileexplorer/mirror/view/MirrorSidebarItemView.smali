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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getItemName()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->isSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE_SIDE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->isExpand()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->updateExpandIcon(Z)V

    goto :goto_36

    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_36
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032f9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f032f9f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mName:Landroid/widget/TextView;

    const v0, 0x7f032c44

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->detector:Landroid/view/GestureDetector;

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

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->detector:Landroid/view/GestureDetector;

    return-void
.end method

.method public setHover(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setHovered(Z)V

    :cond_7
    return-void
.end method

.method public updateExpandIcon(Z)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mIsShow:Z

    if-eq v0, p1, :cond_40

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    const/high16 v1, 0x43340000  # 180.0f

    const/4 v2, 0x0

    if-nez p1, :cond_d

    move v3, v1

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    const/4 v0, 0x1

    new-array v3, v0, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    new-array v3, v0, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mExpandView:Landroid/view/View;

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v6, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    aput-object v6, v4, v5

    if-eqz p1, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-interface {v3, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarItemView;->mIsShow:Z

    :cond_40
    return-void
.end method
