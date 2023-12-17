.class public Lcom/android/fileexplorer/view/MenuSingleLineLayout;
.super Landroid/widget/LinearLayout;
.source "MenuSingleLineLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;,
        Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuSingleLineLayout"

.field private static final VIEW_USEFUL_WIDTH:I


# instance fields
.field private mListener:Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;

.field private mMenuGroupType:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

.field private mMenuItemDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;",
            ">;"
        }
    .end annotation
.end field

.field private menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

.field private menuLayoutMargin:I

.field private menuMarginHorizontal:I

.field private viewMarginHorizontal:I

.field private viewWidthReal:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0701a3

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->VIEW_USEFUL_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    new-array p1, p1, [Lcom/android/fileexplorer/view/MenuItemView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    const p1, 0x7f0701a4

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuMarginHorizontal:I

    const p1, 0x7f0702bb

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuLayoutMargin:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/MenuSingleLineLayout;)Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mListener:Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/MenuSingleLineLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->handleClickViewChange(I)V

    return-void
.end method

.method private handleClickViewChange(I)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    if-ne v1, p1, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    move v3, v0

    :goto_17
    iput-boolean v3, v2, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->refreshViewState(Z)V

    return-void
.end method

.method private initClick(Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;Lcom/android/fileexplorer/view/MenuItemView;I)V
    .registers 5

    iget-boolean v0, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->clickable:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;-><init>(Lcom/android/fileexplorer/view/MenuSingleLineLayout;Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public getLayoutRealWidth()I
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v2, v1, :cond_17

    aget-object v4, v0, v2

    if-nez v4, :cond_c

    goto :goto_14

    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_14

    add-int/lit8 v3, v3, 0x1

    :cond_14
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    const-string v0, "getLayoutRealWidth showCount = "

    const-string v1, ", viewWidthReal = "

    invoke-static {v0, v3, v1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewWidthReal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MenuSingleLineLayout"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewMarginHorizontal:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewWidthReal:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    return v1
.end method

.method public getRealHeight()I
    .registers 2

    const v0, 0x7f0702b3

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public initMenuData(ZLjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ifShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", refreshView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MenuSingleLineLayout"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    if-nez p1, :cond_26

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_26
    if-eqz p2, :cond_4e

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_4e

    :cond_2f
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "initMenuData showCount = "

    invoke-static {p2, p1, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p3, :cond_49

    return-void

    :cond_49
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->refreshViewState(Z)V

    return-void

    :cond_4e
    :goto_4e
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 8

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0702bd

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v1

    sget v2, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->VIEW_USEFUL_WIDTH:I

    mul-int/lit8 v3, v2, 0x6

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuMarginHorizontal:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuLayoutMargin:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewMarginHorizontal:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewWidthReal:I

    const-string v2, "viewWidthReal = "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewWidthReal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", viewMarginHorizontal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewMarginHorizontal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", menuMarginHorizontal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuMarginHorizontal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", viewPaddingHorizontalSelf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", menuLayoutMargin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuLayoutMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MenuSingleLineLayout"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    const v3, 0x7f032fce

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    const v3, 0x7f032fcf

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    const/4 v6, 0x1

    aput-object v3, v2, v6

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    const v3, 0x7f032fcc

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    const v3, 0x7f032fcd

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    const v3, 0x7f032fca

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    const/4 v5, 0x4

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    const v3, 0x7f032fcb

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    const/4 v5, 0x5

    aput-object v3, v2, v5

    iget v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewMarginHorizontal:I

    invoke-virtual {p0, v2, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_d5
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    array-length v3, v2

    if-ge v4, v3, :cond_f7

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewWidthReal:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d5

    :cond_f7
    return-void
.end method

.method public refreshViewState(Z)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    array-length v2, v2

    if-ge v1, v2, :cond_60

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "MenuSingleLineLayout"

    if-le v2, v1, :cond_4f

    const-string v2, "initMenuData in for i = "

    invoke-static {v2, v1, v3}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/view/MenuItemView;->setMenuItemData(Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    iget-boolean v3, v3, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/view/MenuItemView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_5d

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    iget-object v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initClick(Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;Lcom/android/fileexplorer/view/MenuItemView;I)V

    goto :goto_5d

    :cond_4f
    const-string v2, "initMenuData in for hide i = "

    invoke-static {v2, v1, v3}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    aget-object v2, v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_60
    return-void
.end method

.method public requestAccessibilityFocus()V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$2;->$SwitchMap$com$android$fileexplorer$view$FabMenuLayout$MenuGroupType:[I

    iget-object v1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuGroupType:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v2, 0x3

    if-eq v0, v2, :cond_14

    goto :goto_23

    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    aget-object v0, v0, v1

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_2b

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2b
    return-void
.end method

.method public setMenuGroupType(Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuGroupType:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mListener:Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;

    :cond_4
    return-void
.end method
