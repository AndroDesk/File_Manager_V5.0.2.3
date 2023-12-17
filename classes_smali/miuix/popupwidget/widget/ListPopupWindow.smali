.class public Lmiuix/popupwidget/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;,
        Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;,
        Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;,
        Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;,
        Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;,
        Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x10102ff

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x10102ff

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    .line 5
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTouchInterceptor:Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 6
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    .line 7
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHideSelector:Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

    const v0, 0x7fffffff

    .line 8
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mListItemExpandMaximum:I

    const/4 v0, -0x2

    .line 9
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    .line 10
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 12
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 13
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 16
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 17
    new-instance v0, Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-direct {v0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    return-void
.end method

.method public static synthetic access$1000(Lmiuix/popupwidget/widget/ListPopupWindow;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    .line 3
    return-object p0
.end method

.method private buildDropDown()I
    .registers 13

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-nez v0, :cond_b5

    .line 10
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 12
    new-instance v5, Lmiuix/popupwidget/widget/ListPopupWindow$1;

    .line 14
    invoke-direct {v5, p0}, Lmiuix/popupwidget/widget/ListPopupWindow$1;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    .line 17
    iput-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 19
    new-instance v5, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 21
    iget-boolean v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    .line 23
    xor-int/2addr v6, v4

    .line 24
    invoke-direct {v5, v0, v6}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 27
    iput-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 29
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 31
    if-eqz v6, :cond_23

    .line 33
    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 36
    :cond_23
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 38
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 40
    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 45
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 47
    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 52
    invoke-virtual {v5, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 55
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 57
    invoke-virtual {v5, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 60
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 62
    new-instance v6, Lmiuix/popupwidget/widget/ListPopupWindow$2;

    .line 64
    invoke-direct {v6, p0}, Lmiuix/popupwidget/widget/ListPopupWindow$2;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    .line 67
    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 70
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 72
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    .line 74
    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 77
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 79
    if-eqz v5, :cond_55

    .line 81
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 83
    invoke-virtual {v6, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 86
    :cond_55
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 88
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 90
    if-eqz v6, :cond_ae

    .line 92
    new-instance v7, Landroid/widget/LinearLayout;

    .line 94
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    const/high16 v8, 0x3f800000  # 1.0f

    .line 104
    invoke-direct {v0, v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 107
    iget v8, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    .line 109
    if-eqz v8, :cond_8c

    .line 111
    if-eq v8, v4, :cond_85

    .line 113
    const-string v0, "Invalid hint position "

    .line 115
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    move-result-object v0

    .line 119
    iget v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    .line 121
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    const-string v5, "ListPopupWindow"

    .line 130
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    goto :goto_92

    .line 134
    :cond_85
    invoke-virtual {v7, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    goto :goto_92

    .line 141
    :cond_8c
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {v7, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    :goto_92
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    .line 149
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 152
    move-result v0

    .line 153
    invoke-virtual {v6, v0, v3}, Landroid/view/View;->measure(II)V

    .line 156
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 162
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 165
    move-result v5

    .line 166
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 168
    add-int/2addr v5, v6

    .line 169
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 171
    add-int/2addr v5, v0

    .line 172
    move v0, v5

    .line 173
    move-object v5, v7

    .line 174
    goto :goto_af

    .line 175
    :cond_ae
    move v0, v3

    .line 176
    :goto_af
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 178
    invoke-virtual {v6, v5}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    .line 181
    goto :goto_cb

    .line 182
    :cond_b5
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 184
    if-eqz v0, :cond_ca

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 195
    move-result v0

    .line 196
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 198
    add-int/2addr v0, v6

    .line 199
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 201
    add-int/2addr v0, v5

    .line 202
    goto :goto_cb

    .line 203
    :cond_ca
    move v0, v3

    .line 204
    :goto_cb
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 206
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 209
    move-result-object v5

    .line 210
    if-eqz v5, :cond_e7

    .line 212
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 214
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 217
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 219
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 221
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 223
    add-int/2addr v5, v6

    .line 224
    iget-boolean v7, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 226
    if-nez v7, :cond_ed

    .line 228
    neg-int v6, v6

    .line 229
    iput v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 231
    goto :goto_ed

    .line 232
    :cond_e7
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 234
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 237
    move v5, v3

    .line 238
    :cond_ed
    :goto_ed
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 240
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 243
    move-result v6

    .line 244
    const/4 v7, 0x2

    .line 245
    if-ne v6, v7, :cond_f7

    .line 247
    move v3, v4

    .line 248
    :cond_f7
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    .line 251
    move-result-object v4

    .line 252
    iget v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 254
    invoke-virtual {p0, v4, v6, v3}, Lmiuix/popupwidget/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    .line 257
    move-result v3

    .line 258
    iget-boolean v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 260
    if-nez v4, :cond_15a

    .line 262
    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    .line 264
    if-ne v4, v2, :cond_10a

    .line 266
    goto :goto_15a

    .line 267
    :cond_10a
    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    .line 269
    const/4 v6, -0x2

    .line 270
    if-eq v4, v6, :cond_131

    .line 272
    const/high16 v1, 0x40000000  # 2.0f

    .line 274
    if-eq v4, v2, :cond_118

    .line 276
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 279
    move-result v1

    .line 280
    goto :goto_149

    .line 281
    :cond_118
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 290
    move-result-object v2

    .line 291
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 293
    iget-object v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 295
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 297
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 299
    add-int/2addr v6, v4

    .line 300
    sub-int/2addr v2, v6

    .line 301
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 304
    move-result v1

    .line 305
    goto :goto_149

    .line 306
    :cond_131
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 308
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 315
    move-result-object v2

    .line 316
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 318
    iget-object v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 320
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 322
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 324
    add-int/2addr v6, v4

    .line 325
    sub-int/2addr v2, v6

    .line 326
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 329
    move-result v1

    .line 330
    :goto_149
    move v7, v1

    .line 331
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 333
    const/4 v8, 0x0

    .line 334
    const/4 v9, -0x1

    .line 335
    sub-int v10, v3, v0

    .line 337
    const/4 v11, -0x1

    .line 338
    invoke-virtual/range {v6 .. v11}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompact(IIIII)I

    .line 341
    move-result v1

    .line 342
    if-lez v1, :cond_158

    .line 344
    add-int/2addr v0, v5

    .line 345
    :cond_158
    add-int/2addr v1, v0

    .line 346
    return v1

    .line 347
    :cond_15a
    :goto_15a
    add-int/2addr v3, v5

    .line 348
    return v3
.end method

.method private removePromptView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 11
    if-eqz v1, :cond_13

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    :cond_13
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$502(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 12
    :cond_b
    return-void
.end method

.method public dismiss()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 3
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->removePromptView()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 5
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getAnimationStyle()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    .line 3
    return v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 3
    return v0
.end method

.method public getInputMethodMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 3
    return-object v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .registers 8

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [I

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 17
    if-eqz p3, :cond_20

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    move-result-object p3

    .line 31
    iget v2, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 33
    :cond_20
    const/4 p3, 0x1

    .line 34
    aget v3, v1, p3

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 39
    move-result p1

    .line 40
    add-int/2addr p1, v3

    .line 41
    sub-int/2addr v2, p1

    .line 42
    sub-int/2addr v2, p2

    .line 43
    aget p1, v1, p3

    .line 45
    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 47
    sub-int/2addr p1, p3

    .line 48
    add-int/2addr p1, p2

    .line 49
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 51
    invoke-virtual {p2, v2, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getMaxAvailableHeight(II)I

    .line 54
    move-result p1

    .line 55
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 57
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object p2

    .line 61
    if-eqz p2, :cond_51

    .line 63
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 65
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 68
    move-result-object p2

    .line 69
    iget-object p3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 71
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 74
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 76
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 78
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 80
    add-int/2addr p3, p2

    .line 81
    sub-int/2addr p1, p3

    .line 82
    :cond_51
    return p1
.end method

.method public getPopupWindow()Lmiuix/popupwidget/widget/ArrowPopupWindow;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    return-object v0
.end method

.method public getPromptPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    .line 3
    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getSelectedItemId()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    const-wide/high16 v0, -0x8000000000000000L

    .line 9
    return-wide v0

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getSoftInputMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVerticalOffset()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 9
    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    .line 3
    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 3
    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_b

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method public isModal()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    .line 3
    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a4

    .line 8
    const/16 v0, 0x3e

    .line 10
    if-eq p1, v0, :cond_a4

    .line 12
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 14
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 17
    move-result v0

    .line 18
    const/16 v2, 0x17

    .line 20
    const/16 v3, 0x42

    .line 22
    if-gez v0, :cond_1b

    .line 24
    if-eq p1, v3, :cond_a4

    .line 26
    if-eq p1, v2, :cond_a4

    .line 28
    :cond_1b
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 30
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 33
    move-result v0

    .line 34
    iget-object v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 36
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x1

    .line 41
    xor-int/2addr v4, v5

    .line 42
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 44
    const v7, 0x7fffffff

    .line 47
    const/high16 v8, -0x80000000

    .line 49
    if-eqz v6, :cond_55

    .line 51
    invoke-interface {v6}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_3a

    .line 57
    move v8, v1

    .line 58
    goto :goto_40

    .line 59
    :cond_3a
    iget-object v8, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 61
    invoke-static {v8, v1, v5}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$600(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;IZ)I

    .line 64
    move-result v8

    .line 65
    :goto_40
    if-eqz v7, :cond_48

    .line 67
    invoke-interface {v6}, Landroid/widget/Adapter;->getCount()I

    .line 70
    move-result v6

    .line 71
    sub-int/2addr v6, v5

    .line 72
    goto :goto_53

    .line 73
    :cond_48
    iget-object v7, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 75
    invoke-interface {v6}, Landroid/widget/Adapter;->getCount()I

    .line 78
    move-result v6

    .line 79
    sub-int/2addr v6, v5

    .line 80
    invoke-static {v7, v6, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$600(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;IZ)I

    .line 83
    move-result v6

    .line 84
    :goto_53
    move v7, v8

    .line 85
    move v8, v6

    .line 86
    :cond_55
    const/16 v6, 0x13

    .line 88
    if-eqz v4, :cond_5d

    .line 90
    if-ne p1, v6, :cond_5d

    .line 92
    if-le v0, v7, :cond_65

    .line 94
    :cond_5d
    const/16 v9, 0x14

    .line 96
    if-nez v4, :cond_71

    .line 98
    if-ne p1, v9, :cond_71

    .line 100
    if-lt v0, v8, :cond_71

    .line 102
    :cond_65
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->clearListSelection()V

    .line 105
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 107
    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 110
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    .line 113
    return v5

    .line 114
    :cond_71
    iget-object v10, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 116
    invoke-static {v10, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$502(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 119
    iget-object v10, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 121
    invoke-virtual {v10, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_96

    .line 127
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 129
    const/4 v0, 0x2

    .line 130
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 133
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 135
    invoke-virtual {p2}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 138
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    .line 141
    if-eq p1, v6, :cond_95

    .line 143
    if-eq p1, v9, :cond_95

    .line 145
    if-eq p1, v2, :cond_95

    .line 147
    if-eq p1, v3, :cond_95

    .line 149
    goto :goto_a4

    .line 150
    :cond_95
    return v5

    .line 151
    :cond_96
    if-eqz v4, :cond_9d

    .line 153
    if-ne p1, v9, :cond_9d

    .line 155
    if-ne v0, v8, :cond_a4

    .line 157
    return v5

    .line 158
    :cond_9d
    if-nez v4, :cond_a4

    .line 160
    if-ne p1, v6, :cond_a4

    .line 162
    if-ne v0, v7, :cond_a4

    .line 164
    return v5

    .line 165
    :cond_a4
    :goto_a4
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_24

    .line 7
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 9
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_24

    .line 15
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_23

    .line 23
    const/16 v0, 0x17

    .line 25
    if-eq p1, v0, :cond_1f

    .line 27
    const/16 v0, 0x42

    .line 29
    if-eq p1, v0, :cond_1f

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->dismiss(Z)V

    .line 36
    :cond_23
    :goto_23
    return p2

    .line 37
    :cond_24
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public performItemClick(I)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_26

    .line 7
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 9
    if-eqz v0, :cond_24

    .line 11
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 13
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 16
    move-result v0

    .line 17
    sub-int v0, p1, v0

    .line 19
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 29
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 32
    move-result-wide v5

    .line 33
    move v4, p1

    .line 34
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 37
    :cond_24
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_26
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public postShow()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 3
    if-nez v0, :cond_d

    .line 5
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    .line 11
    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 13
    goto :goto_14

    .line 14
    :cond_d
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 16
    if-eqz v1, :cond_14

    .line 18
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 21
    :cond_14
    :goto_14
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 23
    if-eqz p1, :cond_1d

    .line 25
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 27
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 30
    :cond_1d
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 32
    if-eqz p1, :cond_26

    .line 34
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    :cond_26
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public setContentWidth(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_18

    .line 9
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 14
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 16
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 18
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 20
    add-int/2addr v1, v0

    .line 21
    add-int/2addr v1, p1

    .line 22
    iput v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->setWidth(I)V

    .line 28
    :goto_1b
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 3
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 3
    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    .line 3
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 3
    return-void
.end method

.method public setInputMethodMode(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6
    return-void
.end method

.method public setListItemExpandMax(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 3
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 3
    return-void
.end method

.method public setModal(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    .line 4
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 6
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 3
    return-void
.end method

.method public setPromptPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    .line 3
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->removePromptView()V

    .line 10
    :cond_9
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    .line 17
    :cond_10
    return-void
.end method

.method public setSelection(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 3
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1b

    .line 9
    if-eqz v0, :cond_1b

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$502(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 18
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChoiceMode()I

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1b

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, p1, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 28
    :cond_1b
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 6
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 6
    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    .line 3
    return-void
.end method

.method public show()V
    .registers 7

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->buildDropDown()I

    .line 4
    move-result v5

    .line 5
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    .line 7
    const/4 v1, -0x2

    .line 8
    const/4 v2, -0x1

    .line 9
    if-ne v0, v2, :cond_b

    .line 11
    goto :goto_20

    .line 12
    :cond_b
    if-ne v0, v1, :cond_1b

    .line 14
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 16
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0, v3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentWidth(I)V

    .line 27
    goto :goto_20

    .line 28
    :cond_1b
    iget-object v3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 30
    invoke-virtual {v3, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentWidth(I)V

    .line 33
    :goto_20
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    .line 35
    if-ne v0, v2, :cond_25

    .line 37
    goto :goto_32

    .line 38
    :cond_25
    if-ne v0, v1, :cond_2d

    .line 40
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 42
    invoke-virtual {v0, v5}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    .line 45
    goto :goto_32

    .line 46
    :cond_2d
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 48
    invoke-virtual {v1, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    .line 51
    :goto_32
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 57
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 59
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 62
    move-result v0

    .line 63
    const/4 v3, 0x0

    .line 64
    if-eqz v0, :cond_60

    .line 66
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 68
    iget-boolean v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 70
    if-nez v2, :cond_4c

    .line 72
    iget-boolean v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 74
    if-nez v2, :cond_4c

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move v1, v3

    .line 78
    :goto_4d
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 81
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 83
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    .line 86
    move-result-object v1

    .line 87
    iget v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 89
    iget v3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 91
    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 96
    goto :goto_a7

    .line 97
    :cond_60
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 99
    invoke-virtual {v0, v2, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 102
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 104
    iget-boolean v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 106
    if-nez v4, :cond_70

    .line 108
    iget-boolean v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 110
    if-nez v4, :cond_70

    .line 112
    goto :goto_71

    .line 113
    :cond_70
    move v1, v3

    .line 114
    :goto_71
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 117
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 119
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTouchInterceptor:Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 121
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 124
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 126
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    .line 129
    move-result-object v1

    .line 130
    iget v3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 132
    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 134
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 137
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 139
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 142
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    .line 144
    if-eqz v0, :cond_99

    .line 146
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 148
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_9c

    .line 154
    :cond_99
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->clearListSelection()V

    .line 157
    :cond_9c
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    .line 159
    if-nez v0, :cond_a7

    .line 161
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 163
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHideSelector:Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

    .line 165
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    :cond_a7
    :goto_a7
    return-void
.end method
