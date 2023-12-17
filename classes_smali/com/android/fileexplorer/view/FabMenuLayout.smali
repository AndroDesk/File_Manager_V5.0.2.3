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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/FabMenuLayout$1;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/view/FabMenuLayout$1;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/view/FabMenuLayout;->SORT_METHOD_RES:Ljava/util/HashMap;

    .line 8
    new-instance v0, Lcom/android/fileexplorer/view/FabMenuLayout$2;

    .line 10
    invoke-direct {v0}, Lcom/android/fileexplorer/view/FabMenuLayout$2;-><init>()V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/view/FabMenuLayout;->SORT_METHOD_MENU_ID:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/FabMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/FabMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0702bd

    .line 4
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->viewMarginVertical:I

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    return-void
.end method

.method private initMenuItemDataList()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    .line 3
    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 5
    const v2, 0x7f110131

    .line 8
    const v3, 0x7f0a025e

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v1, v7

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    .line 18
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    .line 23
    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 25
    const v2, 0x7f110136

    .line 28
    const v3, 0x7f0a025f

    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v1, v7

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    .line 36
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    .line 41
    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 43
    const v2, 0x7f110138

    .line 46
    const v3, 0x7f0a0263

    .line 49
    move-object v1, v7

    .line 50
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    .line 53
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    .line 58
    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 60
    const v2, 0x7f110133

    .line 63
    const v3, 0x7f0a0261

    .line 66
    move-object v1, v7

    .line 67
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    .line 70
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    .line 75
    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 77
    const v2, 0x7f110134

    .line 80
    const v3, 0x7f0a0262

    .line 83
    move-object v1, v7

    .line 84
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    .line 87
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    .line 92
    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 94
    const v2, 0x7f11007c

    .line 97
    const v3, 0x7f0a0260

    .line 100
    move-object v1, v7

    .line 101
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    .line 104
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    .line 109
    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 111
    const v2, 0x7f110473

    .line 114
    const/4 v3, 0x0

    .line 115
    const/4 v4, 0x0

    .line 116
    move-object v1, v7

    .line 117
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    .line 120
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    .line 125
    new-instance v1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 127
    const v2, 0x7f08066d

    .line 130
    const v3, 0x7f0a026e

    .line 133
    const/4 v4, 0x1

    .line 134
    invoke-direct {v1, v2, v3, v4, v4}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZ)V

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    .line 142
    new-instance v1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 144
    const v2, 0x7f08066c

    .line 147
    const v3, 0x7f0a026d

    .line 150
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZ)V

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method


# virtual methods
.method public getRealHeight()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_10

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 17
    :cond_10
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1a

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 27
    :cond_1a
    const-string v1, "singleHeight = "

    .line 29
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 35
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->getRealHeight()I

    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v2, ", showCount = "

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    const-string v2, "FabMenuLayout"

    .line 56
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 61
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->getRealHeight()I

    .line 64
    move-result v1

    .line 65
    mul-int/2addr v1, v0

    .line 66
    iget v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->viewMarginVertical:I

    .line 68
    mul-int/lit8 v0, v0, 0x2

    .line 70
    add-int/2addr v0, v1

    .line 71
    return v0
.end method

.method public getRealWidth()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->getLayoutRealWidth()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 9
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->getLayoutRealWidth()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 15
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->getLayoutRealWidth()I

    .line 18
    move-result v2

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v1

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public onFinishInflate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->viewMarginVertical:I

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 10
    const v0, 0x7f0a0140

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 21
    sget-object v1, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->Doc:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setMenuGroupType(Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;)V

    .line 26
    const v0, 0x7f0a03b1

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 37
    sget-object v1, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->Sort:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setMenuGroupType(Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;)V

    .line 42
    const v0, 0x7f0a049f

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 53
    sget-object v1, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->ViewType:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setMenuGroupType(Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;)V

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 60
    new-instance v1, Lcom/android/fileexplorer/view/FabMenuLayout$3;

    .line 62
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuLayout$3;-><init>(Lcom/android/fileexplorer/view/FabMenuLayout;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setOnMenuItemClickListener(Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 70
    new-instance v1, Lcom/android/fileexplorer/view/FabMenuLayout$4;

    .line 72
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuLayout$4;-><init>(Lcom/android/fileexplorer/view/FabMenuLayout;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setOnMenuItemClickListener(Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 80
    new-instance v1, Lcom/android/fileexplorer/view/FabMenuLayout$5;

    .line 82
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/FabMenuLayout$5;-><init>(Lcom/android/fileexplorer/view/FabMenuLayout;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->setOnMenuItemClickListener(Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;)V

    .line 88
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FabMenuLayout;->initMenuItemDataList()V

    .line 91
    return-void
.end method

.method public refreshMenuVisible(Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;Z)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/FabMenuLayout$6;->$SwitchMap$com$android$fileexplorer$view$FabMenuLayout$MenuGroupType:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eq p1, v0, :cond_23

    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_1b

    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p1, v0, :cond_13

    .line 19
    goto :goto_2a

    .line 20
    :cond_13
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    .line 24
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initMenuData(ZLjava/util/List;Z)V

    .line 27
    goto :goto_2a

    .line 28
    :cond_1b
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    .line 32
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initMenuData(ZLjava/util/List;Z)V

    .line 35
    goto :goto_2a

    .line 36
    :cond_23
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mDocMenuDataList:Ljava/util/List;

    .line 40
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initMenuData(ZLjava/util/List;Z)V

    .line 43
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

    .line 1
    if-eqz p1, :cond_78

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_78

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    .line 17
    new-instance v7, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 19
    const v2, 0x7f110170

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v1, v7

    .line 27
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZZ)V

    .line 30
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p1

    .line 37
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x1

    .line 43
    if-eqz v0, :cond_6e

    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v4, "showSortMethods = "

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    const-string v4, "FabMenuLayout"

    .line 70
    invoke-static {v4, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    .line 75
    new-instance v4, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 77
    sget-object v5, Lcom/android/fileexplorer/view/FabMenuLayout;->SORT_METHOD_RES:Ljava/util/HashMap;

    .line 79
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Ljava/lang/Integer;

    .line 85
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 88
    move-result v5

    .line 89
    sget-object v6, Lcom/android/fileexplorer/view/FabMenuLayout;->SORT_METHOD_MENU_ID:Ljava/util/HashMap;

    .line 91
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Ljava/lang/Integer;

    .line 97
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result v6

    .line 101
    if-ne v0, p2, :cond_67

    .line 103
    move v1, v2

    .line 104
    :cond_67
    invoke-direct {v4, v5, v6, v2, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;-><init>(IIZZ)V

    .line 107
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    goto :goto_24

    .line 111
    :cond_6e
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 113
    iget-object p2, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mSortMenuDataList:Ljava/util/List;

    .line 115
    invoke-virtual {p1, v2, p2, v2}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initMenuData(ZLjava/util/List;Z)V

    .line 118
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_78
    :goto_78
    return-void
.end method

.method public setShowTypeMenuChecked(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v1, :cond_1c

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 21
    iget v4, v1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuId:I

    .line 23
    if-ne v4, p1, :cond_19

    .line 25
    move v2, v3

    .line 26
    :cond_19
    iput-boolean v2, v1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    const-string p1, "setShowTypeMenuChecked mViewMenuDataList.size = "

    .line 31
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    const-string v0, "FabMenuLayout"

    .line 50
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewTypeMenusLayout:Lcom/android/fileexplorer/view/MenuSingleLineLayout;

    .line 55
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuLayout;->mViewMenuDataList:Ljava/util/List;

    .line 57
    invoke-virtual {p1, v3, v0, v3}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initMenuData(ZLjava/util/List;Z)V

    .line 60
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    return-void
.end method
