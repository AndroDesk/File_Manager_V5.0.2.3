.class Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropDownListView"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x101006d

    .line 5
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    iput-boolean p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 14
    return-void
.end method

.method public static synthetic access$502(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    .line 3
    return p1
.end method

.method public static synthetic access$600(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;IZ)I
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private lookForSelectablePosition(IZ)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_4c

    .line 8
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_e

    .line 14
    goto :goto_4c

    .line 15
    :cond_e
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_46

    .line 29
    if-eqz p2, :cond_2e

    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result p1

    .line 36
    :goto_23
    if-ge p1, v2, :cond_3f

    .line 38
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 41
    move-result p2

    .line 42
    if-nez p2, :cond_3f

    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 46
    goto :goto_23

    .line 47
    :cond_2e
    add-int/lit8 p2, v2, -0x1

    .line 49
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 52
    move-result p1

    .line 53
    :goto_34
    if-ltz p1, :cond_3f

    .line 55
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_3f

    .line 61
    add-int/lit8 p1, p1, -0x1

    .line 63
    goto :goto_34

    .line 64
    :cond_3f
    if-ltz p1, :cond_45

    .line 66
    if-lt p1, v2, :cond_44

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    return p1

    .line 70
    :cond_45
    :goto_45
    return v1

    .line 71
    :cond_46
    if-ltz p1, :cond_4c

    .line 73
    if-lt p1, v2, :cond_4b

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    return p1

    .line 77
    :cond_4c
    :goto_4c
    return v1
.end method


# virtual methods
.method public hasFocus()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    invoke-super {p0}, Landroid/view/View;->hasFocus()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method public hasWindowFocus()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    invoke-super {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method public isFocused()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    invoke-super {p0}, Landroid/view/View;->isFocused()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method public isInTouchMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    .line 7
    if-nez v0, :cond_e

    .line 9
    :cond_8
    invoke-super {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    :cond_e
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public final measureHeightOfChildrenCompact(IIIII)I
    .registers 16

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    .line 8
    move-result p3

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_18

    .line 23
    add-int/2addr p2, p3

    .line 24
    return p2

    .line 25
    :cond_18
    add-int/2addr p2, p3

    .line 26
    const/4 p3, 0x0

    .line 27
    if-lez v0, :cond_1f

    .line 29
    if-eqz v1, :cond_1f

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v0, p3

    .line 33
    :goto_20
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 36
    move-result v1

    .line 37
    const/4 v3, 0x0

    .line 38
    move v4, p3

    .line 39
    move v5, v4

    .line 40
    move v7, v5

    .line 41
    move-object v6, v3

    .line 42
    :goto_29
    if-ge v4, v1, :cond_69

    .line 44
    invoke-interface {v2, v4}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 47
    move-result v8

    .line 48
    if-eq v8, v5, :cond_33

    .line 50
    move-object v6, v3

    .line 51
    move v5, v8

    .line 52
    :cond_33
    invoke-interface {v2, v4, v6, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    move-result-object v8

    .line 60
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    if-lez v8, :cond_46

    .line 64
    const/high16 v9, 0x40000000  # 2.0f

    .line 66
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 69
    move-result v8

    .line 70
    goto :goto_4a

    .line 71
    :cond_46
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 74
    move-result v8

    .line 75
    :goto_4a
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 78
    if-lez v4, :cond_50

    .line 80
    add-int/2addr p2, v0

    .line 81
    :cond_50
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 84
    move-result v8

    .line 85
    add-int/2addr p2, v8

    .line 86
    if-lt p2, p4, :cond_61

    .line 88
    if-ltz p5, :cond_60

    .line 90
    if-le v4, p5, :cond_60

    .line 92
    if-lez v7, :cond_60

    .line 94
    if-eq p2, p4, :cond_60

    .line 96
    move p4, v7

    .line 97
    :cond_60
    return p4

    .line 98
    :cond_61
    if-ltz p5, :cond_66

    .line 100
    if-lt v4, p5, :cond_66

    .line 102
    move v7, p2

    .line 103
    :cond_66
    add-int/lit8 v4, v4, 0x1

    .line 105
    goto :goto_29

    .line 106
    :cond_69
    return p2
.end method
