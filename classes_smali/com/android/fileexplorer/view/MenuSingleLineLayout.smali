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

    .line 1
    const v0, 0x7f0701a3

    .line 4
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 7
    move-result v0

    .line 8
    sput v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->VIEW_USEFUL_WIDTH:I

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    new-array p1, p1, [Lcom/android/fileexplorer/view/MenuItemView;

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    const p1, 0x7f0701a4

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuMarginHorizontal:I

    const p1, 0x7f0702bb

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuLayoutMargin:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/MenuSingleLineLayout;)Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mListener:Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/MenuSingleLineLayout;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->handleClickViewChange(I)V

    .line 4
    return-void
.end method

.method private handleClickViewChange(I)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1c

    .line 11
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 19
    if-ne v1, p1, :cond_16

    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v3, v0

    .line 24
    :goto_17
    iput-boolean v3, v2, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_2

    .line 29
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->refreshViewState(Z)V

    .line 32
    return-void
.end method

.method private initClick(Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;Lcom/android/fileexplorer/view/MenuItemView;I)V
    .registers 5

    .line 1
    iget-boolean v0, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->clickable:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    new-instance v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;

    .line 7
    invoke-direct {v0, p0, p1, p3}, Lcom/android/fileexplorer/view/MenuSingleLineLayout$1;-><init>(Lcom/android/fileexplorer/view/MenuSingleLineLayout;Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;I)V

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_c
    return-void
.end method


# virtual methods
.method public getLayoutRealWidth()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    if-ge v2, v1, :cond_17

    .line 8
    aget-object v4, v0, v2

    .line 10
    if-nez v4, :cond_c

    .line 12
    goto :goto_14

    .line 13
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_14

    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 21
    :cond_14
    :goto_14
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_5

    .line 24
    :cond_17
    const-string v0, "getLayoutRealWidth showCount = "

    .line 26
    const-string v1, ", viewWidthReal = "

    .line 28
    invoke-static {v0, v3, v1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 32
    iget v1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewWidthReal:I

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    const-string v1, "MenuSingleLineLayout"

    .line 43
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewMarginHorizontal:I

    .line 48
    mul-int/lit8 v0, v0, 0x2

    .line 50
    iget v1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewWidthReal:I

    .line 52
    mul-int/2addr v1, v3

    .line 53
    add-int/2addr v1, v0

    .line 54
    return v1
.end method

.method public getRealHeight()I
    .registers 2

    .line 1
    const v0, 0x7f0702b3

    .line 4
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 7
    move-result v0

    .line 8
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "ifShow = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", refreshView = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "MenuSingleLineLayout"

    .line 28
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/16 v0, 0x8

    .line 33
    if-nez p1, :cond_26

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    return-void

    .line 39
    :cond_26
    if-eqz p2, :cond_4e

    .line 41
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2f

    .line 47
    goto :goto_4e

    .line 48
    :cond_2f
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    .line 54
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 57
    iget-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    .line 59
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 65
    move-result p1

    .line 66
    const-string p2, "initMenuData showCount = "

    .line 68
    invoke-static {p2, p1, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    if-nez p3, :cond_49

    .line 73
    return-void

    .line 74
    :cond_49
    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->refreshViewState(Z)V

    .line 78
    return-void

    .line 79
    :cond_4e
    :goto_4e
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public onFinishInflate()V
    .registers 8

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0702bd

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealScreenWidth(Landroid/content/Context;)I

    .line 18
    move-result v1

    .line 19
    sget v2, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->VIEW_USEFUL_WIDTH:I

    .line 21
    mul-int/lit8 v3, v2, 0x6

    .line 23
    sub-int/2addr v1, v3

    .line 24
    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuMarginHorizontal:I

    .line 26
    mul-int/lit8 v4, v3, 0x2

    .line 28
    sub-int/2addr v1, v4

    .line 29
    iget v4, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuLayoutMargin:I

    .line 31
    const/4 v5, 0x2

    .line 32
    mul-int/2addr v4, v5

    .line 33
    sub-int/2addr v1, v4

    .line 34
    div-int/lit8 v1, v1, 0xa

    .line 36
    sub-int/2addr v3, v1

    .line 37
    iput v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewMarginHorizontal:I

    .line 39
    mul-int/lit8 v3, v1, 0x2

    .line 41
    add-int/2addr v3, v2

    .line 42
    iput v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewWidthReal:I

    .line 44
    const-string v2, "viewWidthReal = "

    .line 46
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v2

    .line 50
    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewWidthReal:I

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v3, ", viewMarginHorizontal = "

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewMarginHorizontal:I

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v3, ", menuMarginHorizontal = "

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuMarginHorizontal:I

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v3, ", viewPaddingHorizontalSelf = "

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, ", menuLayoutMargin = "

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuLayoutMargin:I

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    const-string v3, "MenuSingleLineLayout"

    .line 99
    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 104
    const v3, 0x7f0a0258

    .line 107
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    .line 113
    const/4 v4, 0x0

    .line 114
    aput-object v3, v2, v4

    .line 116
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 118
    const v3, 0x7f0a0259

    .line 121
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    .line 127
    const/4 v6, 0x1

    .line 128
    aput-object v3, v2, v6

    .line 130
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 132
    const v3, 0x7f0a025a

    .line 135
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    .line 141
    aput-object v3, v2, v5

    .line 143
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 145
    const v3, 0x7f0a025b

    .line 148
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    .line 154
    const/4 v5, 0x3

    .line 155
    aput-object v3, v2, v5

    .line 157
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 159
    const v3, 0x7f0a025c

    .line 162
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    .line 168
    const/4 v5, 0x4

    .line 169
    aput-object v3, v2, v5

    .line 171
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 173
    const v3, 0x7f0a025d

    .line 176
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object v3

    .line 180
    check-cast v3, Lcom/android/fileexplorer/view/MenuItemView;

    .line 182
    const/4 v5, 0x5

    .line 183
    aput-object v3, v2, v5

    .line 185
    iget v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewMarginHorizontal:I

    .line 187
    invoke-virtual {p0, v2, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 190
    :goto_bd
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 192
    array-length v3, v2

    .line 193
    if-ge v4, v3, :cond_df

    .line 195
    aget-object v2, v2, v4

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    iget v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->viewWidthReal:I

    .line 205
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 207
    iget-object v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 209
    aget-object v3, v3, v4

    .line 211
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 216
    aget-object v2, v2, v4

    .line 218
    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 221
    add-int/lit8 v4, v4, 0x1

    .line 223
    goto :goto_bd

    .line 224
    :cond_df
    return-void
.end method

.method public refreshViewState(Z)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_60

    .line 8
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    const-string v3, "MenuSingleLineLayout"

    .line 16
    if-le v2, v1, :cond_4f

    .line 18
    const-string v2, "initMenuData in for i = "

    .line 20
    invoke-static {v2, v1, v3}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 25
    aget-object v2, v2, v1

    .line 27
    iget-object v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    .line 29
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 35
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/view/MenuItemView;->setMenuItemData(Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;)V

    .line 38
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 40
    aget-object v2, v2, v1

    .line 42
    iget-object v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    .line 44
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 50
    iget-boolean v3, v3, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    .line 52
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/view/MenuItemView;->setSelected(Z)V

    .line 55
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 57
    aget-object v2, v2, v1

    .line 59
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    if-eqz p1, :cond_5d

    .line 64
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuItemDatas:Ljava/util/List;

    .line 66
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;

    .line 72
    iget-object v3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 74
    aget-object v3, v3, v1

    .line 76
    invoke-direct {p0, v2, v3, v1}, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->initClick(Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;Lcom/android/fileexplorer/view/MenuItemView;I)V

    .line 79
    goto :goto_5d

    .line 80
    :cond_4f
    const-string v2, "initMenuData in for hide i = "

    .line 82
    invoke-static {v2, v1, v3}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 87
    aget-object v2, v2, v1

    .line 89
    const/16 v3, 0x8

    .line 91
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_60
    return-void
.end method

.method public requestAccessibilityFocus()V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$2;->$SwitchMap$com$android$fileexplorer$view$FabMenuLayout$MenuGroupType:[I

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuGroupType:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1b

    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_14

    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq v0, v2, :cond_14

    .line 20
    goto :goto_23

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 23
    aget-object v0, v0, v1

    .line 25
    if-eqz v0, :cond_23

    .line 27
    goto :goto_24

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->menuItems:[Lcom/android/fileexplorer/view/MenuItemView;

    .line 30
    const/4 v1, 0x0

    .line 31
    aget-object v0, v0, v1

    .line 33
    if-eqz v0, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    :goto_23
    const/4 v0, 0x0

    .line 37
    :goto_24
    if-eqz v0, :cond_2b

    .line 39
    const/16 v1, 0x8

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 44
    :cond_2b
    return-void
.end method

.method public setMenuGroupType(Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mMenuGroupType:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    .line 3
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;)V
    .registers 2

    .line 1
    if-eqz p1, :cond_4

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout;->mListener:Lcom/android/fileexplorer/view/MenuSingleLineLayout$OnMenuItemClickListener;

    .line 5
    :cond_4
    return-void
.end method
