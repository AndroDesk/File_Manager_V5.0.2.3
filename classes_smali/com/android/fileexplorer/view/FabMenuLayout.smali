.class public Lcom/android/fileexplorer/view/FabMenuLayout;
.super Landroid/widget/LinearLayout;
.source "FabMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;
    }
.end annotation


# static fields
.field public static final SORT_METHOD_MENU_ID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_METHOD_RES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FabMenuLayout"


# instance fields
.field private mDocMenuDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

.field private mSortMenuDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

.field private mViewMenuDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

.field private viewMarginVertical:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/view/FabMenuLayout$1;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/FabMenuLayout$1;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/view/FabMenuLayout;->SORT_METHOD_RES:Ljava/util/HashMap;

    new-instance v0, Lcom/android/fileexplorer/view/FabMenuLayout$2;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/FabMenuLayout$2;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/view/FabMenuLayout;->SORT_METHOD_MENU_ID:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/FabMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/FabMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0702bd

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->viewMarginVertical:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    return-void
.end method

.method private initMenuItemDataList()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    const v2, 0x7f110131

    const v3, 0x7f0a025e

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    const v2, 0x7f110136

    const v3, 0x7f0a025f

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    const v2, 0x7f110138

    const v3, 0x7f0a0263

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    const v2, 0x7f110133

    const v3, 0x7f0a0261

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    const v2, 0x7f110134

    const v3, 0x7f0a0262

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    const v2, 0x7f11007c

    const v3, 0x7f0a0260

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    const v2, 0x7f110473

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    const v2, 0x7f08066d

    const v3, 0x7f0a026e

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    const v2, 0x7f08066c

    const v3, 0x7f0a026d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getRealHeight()I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_10

    add-int/lit8 v0, v0, 0x1

    :cond_10
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    :cond_1a
    const-string v1, "singleHeight = "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->getRealHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FabMenuLayout"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->getRealHeight()I

    move-result v1

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->viewMarginVertical:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getRealWidth()I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->getLayoutRealWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->getLayoutRealWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->getLayoutRealWidth()I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->viewMarginVertical:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f032cd6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    sget-object v1, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->Doc:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setMenuGroupType(Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;)V

    const v0, 0x7f032e27

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    sget-object v1, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->Sort:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setMenuGroupType(Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;)V

    const v0, 0x7f032909

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    sget-object v1, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->ViewType:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setMenuGroupType(Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    new-instance v1, Lcom/android/fileexplorer/view/FabMenuLayout$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuLayout$3;-><init>(Lcom/android/fileexplorer/view/FabMenuLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setOnMenuItemClickListener(Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    new-instance v1, Lcom/android/fileexplorer/view/FabMenuLayout$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuLayout$4;-><init>(Lcom/android/fileexplorer/view/FabMenuLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setOnMenuItemClickListener(Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    new-instance v1, Lcom/android/fileexplorer/view/FabMenuLayout$5;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuLayout$5;-><init>(Lcom/android/fileexplorer/view/FabMenuLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setOnMenuItemClickListener(Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuLayout;->initMenuItemDataList()V

    return-void
.end method

.method public refreshMenuVisible(Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;Z)V
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/view/FabMenuLayout$6;->$SwitchMap$com$android$fileexplorer$view$FabMenuLayout$MenuGroupType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    goto :goto_2a

    :cond_13
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initMenuData(ZLjava/util/List;Z)V

    goto :goto_2a

    :cond_1b
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initMenuData(ZLjava/util/List;Z)V

    goto :goto_2a

    :cond_23
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initMenuData(ZLjava/util/List;Z)V

    :goto_2a
    return-void
.end method

.method public refreshSortView(Ljava/util/List;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;",
            ">;",
            "Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_78

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_78

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    const v2, 0x7f110170

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSortMethods = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FabMenuLayout"

    invoke-static {v4, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    new-instance v4, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    sget-object v5, Lcom/android/fileexplorer/view/FabMenuLayout;->SORT_METHOD_RES:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/android/fileexplorer/view/FabMenuLayout;->SORT_METHOD_MENU_ID:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, p2, :cond_67

    move v1, v2

    :cond_67
    invoke-direct {v4, v5, v6, v2, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_6e
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    iget-object p2, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    invoke-virtual {p1, v2, p2, v2}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initMenuData(ZLjava/util/List;Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_78
    :goto_78
    return-void
.end method

.method public setShowTypeMenuChecked(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    iget v4, v1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuId:I

    if-ne v4, p1, :cond_19

    move v2, v3

    :cond_19
    iput-boolean v2, v1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    goto :goto_6

    :cond_1c
    const-string p1, "setShowTypeMenuChecked mViewMenuDataList.size = "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FabMenuLayout"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    invoke-virtual {p1, v3, v0, v3}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initMenuData(ZLjava/util/List;Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
