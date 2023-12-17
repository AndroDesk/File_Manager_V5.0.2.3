.class public Lcom/miui/maml/elements/ListScreenElement;
.super Lcom/miui/maml/elements/ElementGroup;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ListScreenElement$ListData;,
        Lcom/miui/maml/elements/ListScreenElement$Column;,
        Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;,
        Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;,
        Lcom/miui/maml/elements/ListScreenElement$ListItemElement;
    }
.end annotation


# static fields
.field private static ACC:D = -800.0

.field private static DATA_TYPE_BITMAP:Ljava/lang/String; = "bitmap"

.field private static DATA_TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static DATA_TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static DATA_TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static DATA_TYPE_INTEGER1:Ljava/lang/String; = "integer"

.field private static DATA_TYPE_LONG:Ljava/lang/String; = "long"

.field private static DATA_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final LOG_TAG:Ljava/lang/String; = "ListScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "List"


# instance fields
.field public mAttrDataBinders:Lcom/miui/maml/elements/AttrDataBinders;

.field private mBottomIndex:I

.field private mCachedItemCount:I

.field private mClearOnFinish:Z

.field private mColumnsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mCurrentTime:J

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

.field private mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

.field private mIsChildScroll:Z

.field private mIsScroll:Z

.field private mIsUpDirection:Z

.field private mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

.field private mItemCount:I

.field private mLastTime:J

.field public mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

.field private final mLock:Ljava/lang/Object;

.field private mMaxHeight:Lcom/miui/maml/data/Expression;

.field private mMoving:Z

.field private mOffsetX:D

.field private mOffsetY:D

.field private mPressed:Z

.field private mReuseIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

.field private mSelectedId:I

.field private mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

.field private mSpeed:D

.field private mStartAnimTime:J

.field private mStartAnimY:F

.field private mTopIndex:I

.field private mTouchStartX:D

.field private mTouchStartY:D

.field private mVisibleItemCount:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Ljava/lang/Object;

    .line 6
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 18
    new-instance p2, Ljava/util/ArrayList;

    .line 20
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 25
    new-instance p2, Ljava/util/ArrayList;

    .line 27
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    .line 32
    const/4 p2, -0x1

    .line 33
    iput p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 35
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 37
    const-string v0, "ListScreenElement"

    .line 39
    if-eqz p2, :cond_eb

    .line 41
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->setClip(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 48
    move-result-object v1

    .line 49
    const-string v2, "maxHeight"

    .line 51
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    .line 61
    const-string v1, "clearOnFinish"

    .line 63
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 70
    move-result v1

    .line 71
    iput-boolean v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    .line 73
    const-string v1, "data"

    .line 75
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_de

    .line 85
    invoke-static {v1}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->createColumnsInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 91
    if-eqz v1, :cond_d1

    .line 93
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result v1

    .line 97
    new-array v1, v1, [Lcom/miui/maml/data/IndexedVariable;

    .line 99
    iput-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

    .line 101
    const-string v1, "AttrDataBinders"

    .line 103
    invoke-static {p1, v1}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_c4

    .line 109
    new-instance v0, Lcom/miui/maml/elements/AttrDataBinders;

    .line 111
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 113
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 116
    move-result-object v2

    .line 117
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContextVariables:Lcom/miui/maml/data/ContextVariables;

    .line 119
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/AttrDataBinders;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V

    .line 122
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mAttrDataBinders:Lcom/miui/maml/elements/AttrDataBinders;

    .line 124
    const-string v0, "Data"

    .line 126
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_8c

    .line 132
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 134
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 136
    invoke-direct {v0, p1, v1, p0}, Lcom/miui/maml/elements/ListScreenElement$ListData;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/elements/ListScreenElement;)V

    .line 139
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 141
    :cond_8c
    const-string p1, "scrollbar"

    .line 143
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ListScreenElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 146
    move-result-object p1

    .line 147
    instance-of v0, p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 149
    if-eqz v0, :cond_a7

    .line 151
    move-object v0, p1

    .line 152
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 154
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 156
    sget-object v1, Lcom/miui/maml/elements/ScreenElement$AlignV;->TOP:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 158
    iput-object v1, v0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 160
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->removeElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 163
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 165
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 168
    :cond_a7
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 177
    const-string v2, ".selectedId"

    .line 179
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 185
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 188
    move-result-object v1

    .line 189
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 191
    invoke-direct {p1, v0, v1, p2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 194
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

    .line 196
    return-void

    .line 197
    :cond_c4
    const-string p1, "no attr data binder"

    .line 199
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 204
    const-string p2, "List: no attr data binder"

    .line 206
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    throw p1

    .line 210
    :cond_d1
    const-string p1, "invalid item data"

    .line 212
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 217
    const-string p2, "List: invalid item data"

    .line 219
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 222
    throw p1

    .line 223
    :cond_de
    const-string p1, "no data"

    .line 225
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 230
    const-string p2, "List: no data"

    .line 232
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 235
    throw p1

    .line 236
    :cond_eb
    const-string p1, "no item"

    .line 238
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 243
    const-string p2, "List: no item"

    .line 245
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 248
    throw p1
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_STRING:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_BITMAP:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER1:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_DOUBLE:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_LONG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_FLOAT:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/ListScreenElement;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ListScreenElement;->addColumn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method private addColumn(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    .line 1
    if-eqz p1, :cond_76

    .line 3
    if-nez p2, :cond_6

    .line 5
    goto/16 :goto_76

    .line 7
    :cond_6
    const/4 v0, -0x1

    .line 8
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_f
    if-ge v3, v1, :cond_26

    .line 18
    iget-object v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 26
    iget-object v4, v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_23

    .line 34
    move v0, v3

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_f

    .line 39
    :cond_26
    :goto_26
    if-gez v0, :cond_29

    .line 41
    return-void

    .line 42
    :cond_29
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 44
    monitor-enter p1

    .line 45
    :try_start_2c
    array-length v1, p2

    .line 46
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v3

    .line 52
    :goto_33
    if-ge v2, v3, :cond_57

    .line 54
    const/4 v4, 0x0

    .line 55
    if-ge v2, v1, :cond_3a

    .line 57
    aget-object v4, p2, v2

    .line 59
    :cond_3a
    iget-object v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 67
    invoke-virtual {v5, v0, v4}, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->setData(ILjava/lang/Object;)V

    .line 70
    iget-object v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 78
    iget v4, v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 80
    if-ltz v4, :cond_54

    .line 82
    invoke-direct {p0, v2}, Lcom/miui/maml/elements/ListScreenElement;->getItem(I)Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 85
    :cond_54
    add-int/lit8 v2, v2, 0x1

    .line 87
    goto :goto_33

    .line 88
    :cond_57
    :goto_57
    if-ge v3, v1, :cond_6b

    .line 90
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 95
    move-result v2

    .line 96
    new-array v2, v2, [Ljava/lang/Object;

    .line 98
    aget-object v4, p2, v3

    .line 100
    aput-object v4, v2, v0

    .line 102
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 107
    goto :goto_57

    .line 108
    :cond_6b
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->clearEmptyRowLocked()V

    .line 111
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_2c .. :try_end_6f} :catchall_73

    .line 112
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 115
    return-void

    .line 116
    :catchall_73
    move-exception p2

    .line 117
    :try_start_74
    monitor-exit p1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    .line 118
    throw p2

    .line 119
    :cond_76
    :goto_76
    return-void
.end method

.method private bindDataLocked(Lcom/miui/maml/elements/ListScreenElement$ListItemElement;II)V
    .registers 8

    .line 1
    if-ltz p3, :cond_5f

    .line 3
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 5
    if-lt p3, v0, :cond_7

    .line 7
    goto :goto_5f

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 16
    iget-object v0, v0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 18
    invoke-virtual {p1, p3}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    .line 21
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 29
    iput p2, v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 31
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 39
    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    .line 42
    int-to-float p2, p3

    .line 43
    iget-object p3, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 45
    invoke-virtual {p3}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 48
    move-result p3

    .line 49
    mul-float/2addr p3, p2

    .line 50
    float-to-double p2, p3

    .line 51
    double-to-float p2, p2

    .line 52
    float-to-double p2, p2

    .line 53
    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 56
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 61
    move-result p2

    .line 62
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 65
    move-result-object p3

    .line 66
    iget-object p3, p3, Lcom/miui/maml/ScreenContext;->mContextVariables:Lcom/miui/maml/data/ContextVariables;

    .line 68
    :goto_43
    if-ge v1, p2, :cond_57

    .line 70
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 78
    iget-object v2, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 80
    aget-object v3, v0, v1

    .line 82
    invoke-virtual {p3, v2, v3}, Lcom/miui/maml/data/ContextVariables;->setVar(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_43

    .line 88
    :cond_57
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mAttrDataBinders:Lcom/miui/maml/elements/AttrDataBinders;

    .line 90
    if-eqz p2, :cond_5e

    .line 92
    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/AttrDataBinders;->bind(Lcom/miui/maml/elements/ElementGroup;)V

    .line 95
    :cond_5e
    return-void

    .line 96
    :cond_5f
    :goto_5f
    const-string p1, "ListScreenElement"

    .line 98
    const-string p2, "invalid item data"

    .line 100
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method private checkVisibility()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v4

    .line 16
    if-ge v3, v4, :cond_3c

    .line 18
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 24
    invoke-virtual {v4}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    .line 27
    move-result v5

    .line 28
    if-ltz v5, :cond_30

    .line 30
    iget v6, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    .line 32
    if-lt v5, v6, :cond_30

    .line 34
    iget v6, p0, Lcom/miui/maml/elements/ListScreenElement;->mBottomIndex:I

    .line 36
    if-gt v5, v6, :cond_30

    .line 38
    invoke-virtual {v4}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_39

    .line 44
    const/4 v5, 0x1

    .line 45
    invoke-virtual {v4, v5}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 48
    goto :goto_39

    .line 49
    :cond_30
    invoke-virtual {v4}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_39

    .line 55
    invoke-virtual {v4, v2}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 58
    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_b

    .line 61
    :cond_3c
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_3e
    move-exception v1

    .line 64
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    .line 65
    throw v1
.end method

.method private clearEmptyRowLocked()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_8
    if-ltz v0, :cond_2b

    .line 11
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 19
    iget-object v2, v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 21
    array-length v3, v2

    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    :goto_17
    if-ge v5, v3, :cond_21

    .line 26
    aget-object v6, v2, v5

    .line 28
    if-eqz v6, :cond_1e

    .line 30
    goto :goto_22

    .line 31
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    .line 33
    goto :goto_17

    .line 34
    :cond_21
    move v4, v1

    .line 35
    :goto_22
    if-nez v4, :cond_25

    .line 37
    goto :goto_2b

    .line 38
    :cond_25
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ListScreenElement;->removeItemLocked(I)V

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 43
    goto :goto_8

    .line 44
    :cond_2b
    :goto_2b
    return-void
.end method

.method private getItem(I)Lcom/miui/maml/elements/ListScreenElement$ListItemElement;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-ltz p1, :cond_6d

    .line 7
    :try_start_6
    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 9
    if-lt p1, v2, :cond_b

    .line 11
    goto :goto_6d

    .line 12
    :cond_b
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 20
    iget v2, v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 22
    if-ltz v2, :cond_2f

    .line 24
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 26
    invoke-virtual {v3}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v3

    .line 34
    if-ge v2, v3, :cond_2f

    .line 36
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 38
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 48
    :cond_2f
    if-ltz v2, :cond_39

    .line 50
    if-eqz v1, :cond_54

    .line 52
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    .line 55
    move-result v3

    .line 56
    if-eq v3, p1, :cond_54

    .line 58
    :cond_39
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->getUseableElementIndex()I

    .line 61
    move-result v2

    .line 62
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 64
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 74
    if-eqz v1, :cond_54

    .line 76
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    .line 79
    move-result v3

    .line 80
    if-gez v3, :cond_54

    .line 82
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->reset()V

    .line 85
    :cond_54
    if-eqz v1, :cond_6b

    .line 87
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    .line 90
    move-result v3

    .line 91
    if-ne v3, p1, :cond_68

    .line 93
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 101
    iget-boolean v3, v3, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    .line 103
    if-eqz v3, :cond_6b

    .line 105
    :cond_68
    invoke-direct {p0, v1, v2, p1}, Lcom/miui/maml/elements/ListScreenElement;->bindDataLocked(Lcom/miui/maml/elements/ListScreenElement$ListItemElement;II)V

    .line 108
    :cond_6b
    monitor-exit v0

    .line 109
    return-object v1

    .line 110
    :cond_6d
    :goto_6d
    monitor-exit v0

    .line 111
    return-object v1

    .line 112
    :catchall_6f
    move-exception p1

    .line 113
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_6 .. :try_end_71} :catchall_6f

    .line 114
    throw p1
.end method

.method private getUseableElementIndex()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_16

    .line 10
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v0

    .line 22
    goto :goto_39

    .line 23
    :cond_16
    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    .line 25
    if-eqz v0, :cond_27

    .line 27
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v0

    .line 39
    goto :goto_39

    .line 40
    :cond_27
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v2

    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Integer;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v0

    .line 58
    :goto_39
    iget-boolean v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    .line 60
    if-eqz v2, :cond_47

    .line 62
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_50

    .line 72
    :cond_47
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 81
    :goto_50
    return v0
.end method

.method private moveTo(D)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 7
    int-to-float v1, v1

    .line 8
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 10
    invoke-virtual {v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 13
    move-result v2

    .line 14
    mul-float/2addr v2, v1

    .line 15
    sub-float/2addr v0, v2

    .line 16
    float-to-double v0, v0

    .line 17
    cmpg-double v0, p1, v0

    .line 19
    const-wide/16 v1, 0x0

    .line 21
    if-gez v0, :cond_28

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 26
    move-result p1

    .line 27
    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 29
    int-to-float p2, p2

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 32
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 35
    move-result v0

    .line 36
    mul-float/2addr v0, p2

    .line 37
    sub-float/2addr p1, v0

    .line 38
    float-to-double p1, p1

    .line 39
    iput-wide v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 41
    :cond_28
    const-wide/16 v3, 0x0

    .line 43
    cmpl-double v0, p1, v3

    .line 45
    if-lez v0, :cond_31

    .line 47
    iput-wide v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 49
    move-wide p1, v3

    .line 50
    :cond_31
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 52
    double-to-float v1, p1

    .line 53
    float-to-double v1, v1

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 57
    neg-double p1, p1

    .line 58
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 60
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 63
    move-result v0

    .line 64
    float-to-double v0, v0

    .line 65
    div-double/2addr p1, v0

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    .line 69
    move-result-wide p1

    .line 70
    double-to-int p1, p1

    .line 71
    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 73
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 76
    move-result v0

    .line 77
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 79
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 82
    move-result v1

    .line 83
    div-float/2addr v0, v1

    .line 84
    float-to-int v0, v0

    .line 85
    sub-int/2addr p2, v0

    .line 86
    add-int/lit8 p2, p2, -0x1

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 91
    move-result p1

    .line 92
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    .line 94
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 97
    move-result p1

    .line 98
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 100
    invoke-virtual {p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 103
    move-result p2

    .line 104
    div-float/2addr p1, p2

    .line 105
    float-to-int p1, p1

    .line 106
    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    .line 108
    add-int/2addr p1, p2

    .line 109
    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 111
    add-int/lit8 p2, p2, -0x1

    .line 113
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 116
    move-result p1

    .line 117
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mBottomIndex:I

    .line 119
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    .line 121
    :goto_78
    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mBottomIndex:I

    .line 123
    if-gt p1, p2, :cond_82

    .line 125
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ListScreenElement;->getItem(I)Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 128
    add-int/lit8 p1, p1, 0x1

    .line 130
    goto :goto_78

    .line 131
    :cond_82
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->checkVisibility()V

    .line 134
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->updateScorllBar()V

    .line 137
    return-void
.end method

.method private removeItemLocked(I)V
    .registers 9

    .line 1
    if-ltz p1, :cond_93

    .line 3
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 5
    if-lt p1, v0, :cond_8

    .line 7
    goto/16 :goto_93

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 18
    iput v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 23
    move-result v0

    .line 24
    float-to-double v0, v0

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 32
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    move v2, v1

    .line 40
    move v3, v2

    .line 41
    :goto_28
    if-ge v2, v0, :cond_6f

    .line 43
    iget-object v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 45
    invoke-virtual {v4}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 48
    move-result-object v4

    .line 49
    iget-object v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 67
    invoke-virtual {v4}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    .line 70
    move-result v5

    .line 71
    if-ne v5, p1, :cond_59

    .line 73
    const/4 v3, -0x1

    .line 74
    invoke-virtual {v4, v3}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    .line 77
    const-wide v5, -0x10000000000001L

    .line 82
    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 85
    invoke-virtual {v4, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 88
    move v3, v2

    .line 89
    goto :goto_6c

    .line 90
    :cond_59
    if-le v5, p1, :cond_6c

    .line 92
    add-int/lit8 v5, v5, -0x1

    .line 94
    invoke-virtual {v4, v5}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    .line 97
    int-to-float v5, v5

    .line 98
    iget-object v6, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 100
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 103
    move-result v6

    .line 104
    mul-float/2addr v6, v5

    .line 105
    float-to-double v5, v6

    .line 106
    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 109
    :cond_6c
    :goto_6c
    add-int/lit8 v2, v2, 0x1

    .line 111
    goto :goto_28

    .line 112
    :cond_6f
    if-lez v0, :cond_90

    .line 114
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Ljava/lang/Integer;

    .line 122
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 125
    move-result p1

    .line 126
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 128
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 131
    move-result v0

    .line 132
    float-to-double v0, v0

    .line 133
    invoke-direct {p0, v0, v1}, Lcom/miui/maml/elements/ListScreenElement;->moveTo(D)V

    .line 136
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_90
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 148
    :cond_93
    :goto_93
    return-void
.end method

.method private resetInner()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 9
    :cond_8
    iput-boolean v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 11
    iput-boolean v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 13
    iput-boolean v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 15
    const-wide/16 v0, -0x1

    .line 17
    iput-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 19
    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 23
    return-void
.end method

.method private setVariables()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_78

    .line 10
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 18
    iget-object v3, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 20
    sget-object v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 22
    if-eq v3, v4, :cond_75

    .line 24
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

    .line 26
    aget-object v4, v3, v1

    .line 28
    if-nez v4, :cond_4a

    .line 30
    new-instance v4, Lcom/miui/maml/data/IndexedVariable;

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    iget-object v6, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v6, "."

    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v6, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    iget-object v6, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 58
    invoke-virtual {v6}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 61
    move-result-object v6

    .line 62
    iget-object v6, v6, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 64
    iget-object v2, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 66
    invoke-virtual {v2}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->isNumber()Z

    .line 69
    move-result v2

    .line 70
    invoke-direct {v4, v5, v6, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 73
    aput-object v4, v3, v1

    .line 75
    :cond_4a
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 77
    monitor-enter v2

    .line 78
    :try_start_4d
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

    .line 80
    aget-object v3, v3, v1

    .line 82
    iget v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 84
    if-ltz v4, :cond_6c

    .line 86
    iget-object v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 91
    move-result v5

    .line 92
    if-ge v4, v5, :cond_6c

    .line 94
    iget-object v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 96
    iget v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 98
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 104
    iget-object v4, v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 106
    aget-object v4, v4, v1

    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    const/4 v4, 0x0

    .line 110
    :goto_6d
    invoke-virtual {v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v2

    .line 114
    goto :goto_75

    .line 115
    :catchall_72
    move-exception v0

    .line 116
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_4d .. :try_end_74} :catchall_72

    .line 117
    throw v0

    .line 118
    :cond_75
    :goto_75
    add-int/lit8 v1, v1, 0x1

    .line 120
    goto :goto_7

    .line 121
    :cond_78
    return-void
.end method

.method private startAnimation()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 9
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimY:F

    .line 15
    return-void
.end method

.method private updateScorllBar()V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 3
    if-eqz v0, :cond_52

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 7
    if-eqz v0, :cond_52

    .line 9
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 11
    int-to-float v0, v0

    .line 12
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 14
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 17
    move-result v1

    .line 18
    mul-float/2addr v1, v0

    .line 19
    float-to-double v0, v1

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 23
    move-result v2

    .line 24
    float-to-double v2, v2

    .line 25
    div-double v4, v2, v0

    .line 27
    const/4 v6, 0x1

    .line 28
    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    .line 30
    cmpl-double v9, v4, v7

    .line 32
    if-ltz v9, :cond_24

    .line 34
    const-wide/16 v4, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    :cond_24
    iget-object v9, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 39
    invoke-virtual {v9}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 42
    move-result v9

    .line 43
    float-to-double v9, v9

    .line 44
    sub-double v0, v2, v0

    .line 46
    div-double/2addr v9, v0

    .line 47
    cmpl-double v0, v9, v7

    .line 49
    if-lez v0, :cond_33

    .line 51
    move-wide v9, v7

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 54
    sub-double/2addr v7, v4

    .line 55
    mul-double/2addr v7, v2

    .line 56
    mul-double/2addr v7, v9

    .line 57
    double-to-float v1, v7

    .line 58
    float-to-double v7, v1

    .line 59
    invoke-virtual {v0, v7, v8}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 62
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 64
    mul-double/2addr v2, v4

    .line 65
    double-to-float v1, v2

    .line 66
    float-to-double v1, v1

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setHeight(D)V

    .line 70
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 72
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 75
    move-result v0

    .line 76
    if-eq v0, v6, :cond_52

    .line 78
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 80
    invoke-virtual {v0, v6}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 83
    :cond_52
    return-void
.end method


# virtual methods
.method public varargs addItem([Ljava/lang/Object;)V
    .registers 6

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    array-length v0, p1

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    if-eq v0, v1, :cond_14

    .line 13
    const-string p1, "ListScreenElement"

    .line 15
    const-string v0, "invalid item data count"

    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void

    .line 21
    :cond_14
    array-length v0, p1

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_16
    if-ge v1, v0, :cond_40

    .line 25
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 33
    aget-object v3, p1, v1

    .line 35
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->validate(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_3d

    .line 41
    const-string v0, "ListScreenElement"

    .line 43
    const-string v2, "invalid item data type: "

    .line 45
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v2

    .line 49
    aget-object p1, p1, v1

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 62
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_16

    .line 65
    :cond_40
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 67
    monitor-enter v0

    .line 68
    :try_start_43
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 70
    new-instance v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 72
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, [Ljava/lang/Object;

    .line 78
    invoke-direct {v2, p1}, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;-><init>([Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 86
    add-int/lit8 p1, p1, 0x1

    .line 88
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 90
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 92
    add-int/lit8 p1, p1, 0x1

    .line 94
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 96
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 99
    move-result p1

    .line 100
    float-to-double v1, p1

    .line 101
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 104
    move-result-wide v1

    .line 105
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 108
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 111
    move-result p1

    .line 112
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    .line 114
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 117
    move-result-wide v1

    .line 118
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 121
    move-result v1

    .line 122
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    .line 125
    move-result p1

    .line 126
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 128
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 131
    move-result v1

    .line 132
    div-float/2addr p1, v1

    .line 133
    float-to-int p1, p1

    .line 134
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mVisibleItemCount:I

    .line 136
    mul-int/lit8 p1, p1, 0x2

    .line 138
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCachedItemCount:I

    .line 140
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 142
    invoke-virtual {p1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 149
    move-result p1

    .line 150
    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCachedItemCount:I

    .line 152
    if-ge p1, v1, :cond_cf

    .line 154
    new-instance v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 156
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 158
    iget-object v3, v2, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mNode:Lorg/w3c/dom/Element;

    .line 160
    iget-object v2, v2, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 162
    invoke-direct {v1, v3, v2}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 165
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 167
    invoke-virtual {v2, v1}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 170
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 172
    iget v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 174
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 180
    iput p1, v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 182
    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 184
    iput v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 186
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 189
    const/4 v2, -0x1

    .line 190
    iput v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 192
    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 194
    invoke-direct {p0, v1, p1, v2}, Lcom/miui/maml/elements/ListScreenElement;->bindDataLocked(Lcom/miui/maml/elements/ListScreenElement$ListItemElement;II)V

    .line 197
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 199
    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_43 .. :try_end_d0} :catchall_d4

    .line 209
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 212
    return-void

    .line 213
    :catchall_d4
    move-exception p1

    .line 214
    :try_start_d5
    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    .line 215
    throw p1
.end method

.method public doTick(J)V
    .registers 13

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    .line 4
    iget-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 6
    const-wide/16 v2, 0x0

    .line 8
    cmp-long v4, v0, v2

    .line 10
    if-ltz v4, :cond_4c

    .line 12
    iget-boolean v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    .line 14
    if-nez v4, :cond_4c

    .line 16
    sub-long/2addr p1, v0

    .line 17
    cmp-long v0, v0, v2

    .line 19
    if-eqz v0, :cond_46

    .line 21
    iget-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 23
    sget-wide v2, Lcom/miui/maml/elements/ListScreenElement;->ACC:D

    .line 25
    long-to-double p1, p1

    .line 26
    mul-double v4, v2, p1

    .line 28
    const-wide v6, 0x408f400000000000L  # 1000.0

    .line 33
    div-double/2addr v4, v6

    .line 34
    add-double/2addr v4, v0

    .line 35
    const-wide/16 v8, 0x0

    .line 37
    cmpg-double v4, v4, v8

    .line 39
    if-gez v4, :cond_29

    .line 41
    goto :goto_46

    .line 42
    :cond_29
    mul-double/2addr v0, p1

    .line 43
    div-double/2addr v0, v6

    .line 44
    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    .line 46
    mul-double/2addr v2, v4

    .line 47
    mul-double/2addr v2, p1

    .line 48
    mul-double/2addr v2, p1

    .line 49
    const-wide p1, 0x412e848000000000L  # 1000000.0

    .line 54
    div-double/2addr v2, p1

    .line 55
    add-double/2addr v2, v0

    .line 56
    iput-wide v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 58
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimY:F

    .line 60
    float-to-double p1, p1

    .line 61
    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    .line 63
    if-eqz v0, :cond_41

    .line 65
    neg-double v2, v2

    .line 66
    :cond_41
    add-double/2addr p1, v2

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ListScreenElement;->moveTo(D)V

    .line 70
    goto :goto_49

    .line 71
    :cond_46
    :goto_46
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    .line 74
    :goto_49
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 77
    :cond_4c
    return-void
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 6
    if-ltz v1, :cond_2b

    .line 8
    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 10
    if-ge v1, v2, :cond_2b

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 20
    iget v1, v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 22
    if-ltz v1, :cond_2b

    .line 24
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 26
    invoke-virtual {v2}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 36
    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2b

    .line 42
    monitor-exit v0

    .line 43
    return-object v1

    .line 44
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_31

    .line 45
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    .line 52
    throw p1
.end method

.method public finish()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->removeAllItems()V

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement$ListData;->finish()V

    .line 18
    :cond_11
    return-void
.end method

.method public getColumnsInfo()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getHeight()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 8
    move-result v0

    .line 9
    goto :goto_21

    .line 10
    :cond_9
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 12
    int-to-float v0, v0

    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 15
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 18
    move-result v1

    .line 19
    mul-float/2addr v1, v0

    .line 20
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    .line 22
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 25
    move-result-wide v2

    .line 26
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 29
    move-result v0

    .line 30
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 33
    move-result v0

    .line 34
    :goto_21
    return v0
.end method

.method public init()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 17
    move-result v0

    .line 18
    float-to-double v0, v0

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 22
    move-result-wide v0

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 26
    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 29
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

    .line 31
    int-to-double v2, v0

    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 35
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->setVariables()V

    .line 38
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 40
    if-eqz v0, :cond_2c

    .line 42
    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement$ListData;->init()V

    .line 45
    :cond_2c
    return-void
.end method

.method public onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .registers 4

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Item"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_24

    .line 13
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 15
    if-nez v0, :cond_24

    .line 17
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 19
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 21
    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 24
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 26
    new-instance p1, Lcom/miui/maml/elements/ElementGroup;

    .line 28
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 31
    invoke-direct {p1, v0, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 34
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 36
    return-object p1

    .line 37
    :cond_24
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    move-result v1

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    move-result v3

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    move-result v4

    .line 23
    const-wide/16 v5, 0x0

    .line 25
    const-wide/16 v7, -0x1

    .line 27
    const/4 v9, 0x1

    .line 28
    if-eqz v4, :cond_108

    .line 30
    if-eq v4, v9, :cond_e0

    .line 32
    const/4 v10, 0x2

    .line 33
    const/4 v11, 0x3

    .line 34
    if-eq v4, v10, :cond_41

    .line 36
    if-eq v4, v11, :cond_2a

    .line 38
    :cond_25
    move v3, v2

    .line 39
    move-object/from16 v2, p1

    .line 41
    goto/16 :goto_154

    .line 43
    :cond_2a
    iput-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    .line 45
    iget-boolean v1, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 47
    if-eqz v1, :cond_25

    .line 49
    const-string v1, "cancel"

    .line 51
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    .line 57
    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 59
    move v3, v2

    .line 60
    move/from16 v16, v9

    .line 62
    move-object/from16 v2, p1

    .line 64
    goto/16 :goto_156

    .line 66
    :cond_41
    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 68
    if-eqz v4, :cond_db

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    move-result-wide v7

    .line 74
    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentTime:J

    .line 76
    float-to-double v7, v3

    .line 77
    iget-wide v12, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartY:D

    .line 79
    sub-double v12, v7, v12

    .line 81
    iput-wide v12, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 83
    float-to-double v14, v1

    .line 84
    move v10, v3

    .line 85
    iget-wide v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartX:D

    .line 87
    sub-double/2addr v14, v2

    .line 88
    iput-wide v14, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetX:D

    .line 90
    iget-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 92
    if-nez v2, :cond_8a

    .line 94
    iget-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 96
    if-nez v2, :cond_8a

    .line 98
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    .line 101
    move-result-wide v2

    .line 102
    iget-wide v12, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetX:D

    .line 104
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    .line 107
    move-result-wide v12

    .line 108
    const-wide/high16 v14, 0x4014000000000000L  # 5.0

    .line 110
    cmpl-double v16, v2, v14

    .line 112
    if-lez v16, :cond_7c

    .line 114
    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 116
    if-nez v4, :cond_7c

    .line 118
    cmpl-double v4, v2, v12

    .line 120
    if-ltz v4, :cond_7c

    .line 122
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 124
    goto :goto_8a

    .line 125
    :cond_7c
    cmpl-double v4, v12, v14

    .line 127
    if-lez v4, :cond_8a

    .line 129
    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 131
    if-nez v4, :cond_8a

    .line 133
    cmpg-double v2, v2, v12

    .line 135
    if-gez v2, :cond_8a

    .line 137
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 139
    :cond_8a
    :goto_8a
    iget-wide v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 141
    cmpg-double v2, v2, v5

    .line 143
    if-ltz v2, :cond_97

    .line 145
    iget-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 147
    if-eqz v2, :cond_95

    .line 149
    goto :goto_97

    .line 150
    :cond_95
    const/4 v2, 0x0

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    :goto_97
    move v2, v9

    .line 153
    :goto_98
    iput-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    .line 155
    iget-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 157
    if-eqz v2, :cond_d4

    .line 159
    move-object/from16 v2, p1

    .line 161
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 164
    const-string v3, "move"

    .line 166
    invoke-virtual {v0, v3}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v1, v10}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    .line 172
    iget-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 174
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 177
    move-result-wide v3

    .line 178
    iget-wide v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentTime:J

    .line 180
    iget-wide v10, v0, Lcom/miui/maml/elements/ListScreenElement;->mLastTime:J

    .line 182
    sub-long/2addr v5, v10

    .line 183
    long-to-double v5, v5

    .line 184
    div-double/2addr v3, v5

    .line 185
    const-wide v5, 0x408f400000000000L  # 1000.0

    .line 190
    mul-double/2addr v3, v5

    .line 191
    iput-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 193
    iget-object v1, v0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 195
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 198
    move-result v1

    .line 199
    float-to-double v3, v1

    .line 200
    iget-wide v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 202
    add-double/2addr v3, v5

    .line 203
    invoke-direct {v0, v3, v4}, Lcom/miui/maml/elements/ListScreenElement;->moveTo(D)V

    .line 206
    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartY:D

    .line 208
    iget-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentTime:J

    .line 210
    iput-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mLastTime:J

    .line 212
    goto :goto_d6

    .line 213
    :cond_d4
    move-object/from16 v2, p1

    .line 215
    :goto_d6
    move/from16 v16, v9

    .line 217
    const/4 v3, 0x0

    .line 218
    goto/16 :goto_156

    .line 220
    :cond_db
    move-object/from16 v2, p1

    .line 222
    const/4 v3, 0x0

    .line 223
    goto/16 :goto_154

    .line 225
    :cond_e0
    move v3, v2

    .line 226
    move-object/from16 v2, p1

    .line 228
    iput-boolean v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    .line 230
    iget-boolean v1, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 232
    if-eqz v1, :cond_154

    .line 234
    const-string v1, "ListScreenElement"

    .line 236
    const-string v4, "unlock touch up"

    .line 238
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v1, "up"

    .line 243
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionUp()V

    .line 249
    iget-wide v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 251
    const-wide/high16 v6, 0x4079000000000000L  # 400.0

    .line 253
    cmpg-double v1, v4, v6

    .line 255
    if-gez v1, :cond_104

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    .line 260
    goto :goto_151

    .line 261
    :cond_104
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->startAnimation()V

    .line 264
    goto :goto_151

    .line 265
    :cond_108
    move v10, v3

    .line 266
    move v3, v2

    .line 267
    move-object/from16 v2, p1

    .line 269
    invoke-virtual {v0, v1, v10}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_154

    .line 275
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 277
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    .line 279
    const-string v4, "down"

    .line 281
    invoke-virtual {v0, v4}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, v1, v10}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    .line 287
    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 289
    iput-wide v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 294
    move-result-wide v4

    .line 295
    iput-wide v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mLastTime:J

    .line 297
    iget-object v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 299
    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 302
    move-result v4

    .line 303
    sub-float v4, v10, v4

    .line 305
    iget-object v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 307
    invoke-virtual {v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 310
    move-result v5

    .line 311
    div-float/2addr v4, v5

    .line 312
    float-to-double v4, v4

    .line 313
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 316
    move-result-wide v4

    .line 317
    double-to-int v4, v4

    .line 318
    iput v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 320
    iget-object v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

    .line 322
    int-to-double v6, v4

    .line 323
    invoke-virtual {v5, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->setVariables()V

    .line 329
    float-to-double v4, v1

    .line 330
    iput-wide v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartX:D

    .line 332
    float-to-double v4, v10

    .line 333
    iput-wide v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartY:D

    .line 335
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->updateScorllBar()V

    .line 338
    :goto_151
    move/from16 v16, v9

    .line 340
    goto :goto_156

    .line 341
    :cond_154
    :goto_154
    move/from16 v16, v3

    .line 343
    :goto_156
    invoke-super/range {p0 .. p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    .line 346
    move-result v1

    .line 347
    if-nez v1, :cond_165

    .line 349
    if-eqz v16, :cond_163

    .line 351
    iget-boolean v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 353
    if-eqz v1, :cond_163

    .line 355
    goto :goto_165

    .line 356
    :cond_163
    move v2, v3

    .line 357
    goto :goto_166

    .line 358
    :cond_165
    :goto_165
    move v2, v9

    .line 359
    :goto_166
    return v2
.end method

.method public removeAllItems()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->removeAllElements()V

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 16
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 21
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 26
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 31
    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 34
    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 37
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 40
    move-result v1

    .line 41
    float-to-double v1, v1

    .line 42
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_32
    move-exception v1

    .line 52
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    .line 53
    throw v1
.end method
