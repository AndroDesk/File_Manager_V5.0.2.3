.class public Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;
.super Landroid/widget/LinearLayout;
.source "MirrorSortViewPopupContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mSelectedSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field private mTvAsc:Landroid/widget/TextView;

.field private mTvDesc:Landroid/widget/TextView;

.field private mTvFileType:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;

.field private mTvTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getItemView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Landroid/widget/TextView;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    sget-object v1, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$1;->$SwitchMap$com$android$fileexplorer$model$FileSortHelper$SortMethod:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_20

    return-object v0

    :pswitch_10  #0x6
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvFileType:Landroid/widget/TextView;

    return-object p1

    :pswitch_13  #0x4, 0x5
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvTime:Landroid/widget/TextView;

    return-object p1

    :pswitch_16  #0x3
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvAsc:Landroid/widget/TextView;

    return-object p1

    :pswitch_19  #0x2
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvDesc:Landroid/widget/TextView;

    return-object p1

    :pswitch_1c  #0x1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvName:Landroid/widget/TextView;

    return-object p1

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c  #00000001
        :pswitch_19  #00000002
        :pswitch_16  #00000003
        :pswitch_13  #00000004
        :pswitch_13  #00000005
        :pswitch_10  #00000006
    .end packed-switch
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d00cc

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f032fd6

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mRootView:Landroid/widget/LinearLayout;

    const p1, 0x7f0329f9

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvName:Landroid/widget/TextView;

    const p1, 0x7f0329fa

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvDesc:Landroid/widget/TextView;

    const p1, 0x7f0329fd

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvAsc:Landroid/widget/TextView;

    const p1, 0x7f0329fb

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvFileType:Landroid/widget/TextView;

    const p1, 0x7f0329e4

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvTime:Landroid/widget/TextView;

    const/4 p1, 0x1

    new-array p2, p1, [Landroid/view/View;

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvName:Landroid/widget/TextView;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array p3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-interface {p2, v1, p3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    const p3, 0x3d4ccccd  # 0.05f

    const/4 v2, 0x0

    invoke-interface {p2, p3, v2, v2, v2}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvName:Landroid/widget/TextView;

    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p2, p1, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvDesc:Landroid/widget/TextView;

    aput-object v3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p2, v1, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    invoke-interface {p2, p3, v2, v2, v2}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvDesc:Landroid/widget/TextView;

    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p2, p1, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvAsc:Landroid/widget/TextView;

    aput-object v3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p2, v1, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    invoke-interface {p2, p3, v2, v2, v2}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvAsc:Landroid/widget/TextView;

    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p2, p1, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvFileType:Landroid/widget/TextView;

    aput-object v3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p2, v1, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    invoke-interface {p2, p3, v2, v2, v2}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvFileType:Landroid/widget/TextView;

    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p1, p1, [Landroid/view/View;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvTime:Landroid/widget/TextView;

    aput-object p2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, v1, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    invoke-interface {p1, p3, v2, v2, v2}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvTime:Landroid/widget/TextView;

    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvName:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvDesc:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvAsc:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvFileType:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvTime:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getItemDesc(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->getItemView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const-string p1, ""

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mSelectedSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object v0, Lcom/android/fileexplorer/view/FabMenuLayout;->SORT_METHOD_MENU_ID:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_29

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;->onSortItemClick(I)V

    :cond_29
    return-void
.end method

.method public refreshSortView([Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 8

    if-eqz p1, :cond_42

    array-length v0, p1

    if-eqz v0, :cond_42

    if-nez p2, :cond_8

    goto :goto_42

    :cond_8
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mSelectedSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_27

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_24

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_27
    array-length v0, p1

    move v2, v1

    :goto_29
    if-ge v2, v0, :cond_42

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->getItemView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_3f

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    if-ne v3, p2, :cond_3f

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_42
    :goto_42
    return-void
.end method

.method public setOnSortItemClickListener(Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;

    return-void
.end method
