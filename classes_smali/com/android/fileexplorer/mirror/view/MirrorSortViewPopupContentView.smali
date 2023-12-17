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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getItemView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Landroid/widget/TextView;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    sget-object v1, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$1;->$SwitchMap$com$android$fileexplorer$model$FileSortHelper$SortMethod:[I

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result p1

    .line 11
    aget p1, v1, p1

    .line 13
    packed-switch p1, :pswitch_data_20

    .line 16
    return-object v0

    .line 17
    :pswitch_10  #0x6
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvFileType:Landroid/widget/TextView;

    .line 19
    return-object p1

    .line 20
    :pswitch_13  #0x4, 0x5
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvTime:Landroid/widget/TextView;

    .line 22
    return-object p1

    .line 23
    :pswitch_16  #0x3
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvAsc:Landroid/widget/TextView;

    .line 25
    return-object p1

    .line 26
    :pswitch_19  #0x2
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvDesc:Landroid/widget/TextView;

    .line 28
    return-object p1

    .line 29
    :pswitch_1c  #0x1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvName:Landroid/widget/TextView;

    .line 31
    return-object p1

    .line 32
    nop

    .line 33
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

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    const p2, 0x7f0d00cc

    .line 8
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    const p1, 0x7f0a0240

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/widget/LinearLayout;

    .line 20
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mRootView:Landroid/widget/LinearLayout;

    .line 22
    const p1, 0x7f0a046f

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/TextView;

    .line 31
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvName:Landroid/widget/TextView;

    .line 33
    const p1, 0x7f0a046c

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/TextView;

    .line 42
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvDesc:Landroid/widget/TextView;

    .line 44
    const p1, 0x7f0a046b

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/widget/TextView;

    .line 53
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvAsc:Landroid/widget/TextView;

    .line 55
    const p1, 0x7f0a046d

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/TextView;

    .line 64
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvFileType:Landroid/widget/TextView;

    .line 66
    const p1, 0x7f0a0472

    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/widget/TextView;

    .line 75
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvTime:Landroid/widget/TextView;

    .line 77
    const/4 p1, 0x1

    .line 78
    new-array p2, p1, [Landroid/view/View;

    .line 80
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvName:Landroid/widget/TextView;

    .line 82
    const/4 v0, 0x0

    .line 83
    aput-object p3, p2, v0

    .line 85
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 88
    move-result-object p2

    .line 89
    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 92
    move-result-object p2

    .line 93
    new-array p3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 95
    const/high16 v1, 0x3f800000  # 1.0f

    .line 97
    invoke-interface {p2, v1, p3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 100
    move-result-object p2

    .line 101
    const p3, 0x3d4ccccd  # 0.05f

    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-interface {p2, p3, v2, v2, v2}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    .line 108
    move-result-object p2

    .line 109
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvName:Landroid/widget/TextView;

    .line 111
    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    .line 113
    invoke-interface {p2, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 116
    new-array p2, p1, [Landroid/view/View;

    .line 118
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvDesc:Landroid/widget/TextView;

    .line 120
    aput-object v3, p2, v0

    .line 122
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 125
    move-result-object p2

    .line 126
    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 129
    move-result-object p2

    .line 130
    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 132
    invoke-interface {p2, v1, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 135
    move-result-object p2

    .line 136
    invoke-interface {p2, p3, v2, v2, v2}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    .line 139
    move-result-object p2

    .line 140
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvDesc:Landroid/widget/TextView;

    .line 142
    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    .line 144
    invoke-interface {p2, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 147
    new-array p2, p1, [Landroid/view/View;

    .line 149
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvAsc:Landroid/widget/TextView;

    .line 151
    aput-object v3, p2, v0

    .line 153
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 156
    move-result-object p2

    .line 157
    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 160
    move-result-object p2

    .line 161
    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 163
    invoke-interface {p2, v1, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 166
    move-result-object p2

    .line 167
    invoke-interface {p2, p3, v2, v2, v2}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    .line 170
    move-result-object p2

    .line 171
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvAsc:Landroid/widget/TextView;

    .line 173
    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    .line 175
    invoke-interface {p2, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 178
    new-array p2, p1, [Landroid/view/View;

    .line 180
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvFileType:Landroid/widget/TextView;

    .line 182
    aput-object v3, p2, v0

    .line 184
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 187
    move-result-object p2

    .line 188
    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 191
    move-result-object p2

    .line 192
    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 194
    invoke-interface {p2, v1, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 197
    move-result-object p2

    .line 198
    invoke-interface {p2, p3, v2, v2, v2}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    .line 201
    move-result-object p2

    .line 202
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvFileType:Landroid/widget/TextView;

    .line 204
    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    .line 206
    invoke-interface {p2, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 209
    new-array p1, p1, [Landroid/view/View;

    .line 211
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvTime:Landroid/widget/TextView;

    .line 213
    aput-object p2, p1, v0

    .line 215
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 218
    move-result-object p1

    .line 219
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 222
    move-result-object p1

    .line 223
    new-array p2, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 225
    invoke-interface {p1, v1, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 228
    move-result-object p1

    .line 229
    invoke-interface {p1, p3, v2, v2, v2}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    .line 232
    move-result-object p1

    .line 233
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvTime:Landroid/widget/TextView;

    .line 235
    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    .line 237
    invoke-interface {p1, p2, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 240
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvName:Landroid/widget/TextView;

    .line 242
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvDesc:Landroid/widget/TextView;

    .line 247
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvAsc:Landroid/widget/TextView;

    .line 252
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvFileType:Landroid/widget/TextView;

    .line 257
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mTvTime:Landroid/widget/TextView;

    .line 262
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void
.end method


# virtual methods
.method public getItemDesc(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->getItemView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Landroid/widget/TextView;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_f

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    const-string p1, ""

    .line 18
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mSelectedSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 3
    if-eqz v0, :cond_29

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;

    .line 7
    if-eqz v0, :cond_29

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 15
    if-eqz v0, :cond_29

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 23
    sget-object v0, Lcom/android/fileexplorer/view/FabMenuLayout;->SORT_METHOD_MENU_ID:Ljava/util/HashMap;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Integer;

    .line 31
    if-eqz p1, :cond_29

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result p1

    .line 39
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;->onSortItemClick(I)V

    .line 42
    :cond_29
    return-void
.end method

.method public refreshSortView([Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 8

    .line 1
    if-eqz p1, :cond_42

    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_42

    .line 6
    if-nez p2, :cond_8

    .line 8
    goto :goto_42

    .line 9
    :cond_8
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mSelectedSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mRootView:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_12
    if-ge v2, v0, :cond_27

    .line 21
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mRootView:Landroid/widget/LinearLayout;

    .line 23
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_24

    .line 29
    const/16 v4, 0x8

    .line 31
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 34
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 37
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_12

    .line 40
    :cond_27
    array-length v0, p1

    .line 41
    move v2, v1

    .line 42
    :goto_29
    if-ge v2, v0, :cond_42

    .line 44
    aget-object v3, p1, v2

    .line 46
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->getItemView(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Landroid/widget/TextView;

    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_3f

    .line 52
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    if-ne v3, p2, :cond_3f

    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    .line 64
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_29

    .line 67
    :cond_42
    :goto_42
    return-void
.end method

.method public setOnSortItemClickListener(Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorSortViewPopupContentView$onSortItemClickListener;

    .line 3
    return-void
.end method
