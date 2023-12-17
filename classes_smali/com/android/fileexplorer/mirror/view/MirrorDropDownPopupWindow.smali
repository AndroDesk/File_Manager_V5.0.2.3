.class public Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;
.super Ljava/lang/Object;
.source "MirrorDropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mElevation:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 6
    const v0, 0x7f0702d8

    .line 9
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mElevation:I

    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->lambda$show$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mSelectedIndex:I

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->lambda$show$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private synthetic lambda$show$0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;->onDismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$show$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1
    iput p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mSelectedIndex:I

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1, p3}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;->onItemSelected(I)V

    .line 10
    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->dismiss()V

    .line 13
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mItems:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setOnMenuListener(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;

    .line 3
    return-void
.end method

.method public setSelectedItem(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mSelectedIndex:I

    .line 3
    return-void
.end method

.method public show()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mItems:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_81

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 7
    if-eqz v0, :cond_81

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_3b

    .line 15
    new-instance v0, Landroid/widget/PopupWindow;

    .line 17
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 19
    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 24
    new-instance v3, Lcom/android/fileexplorer/mirror/view/c;

    .line 26
    invoke-direct {v3, p0, v1}, Lcom/android/fileexplorer/mirror/view/c;-><init>(Ljava/lang/Object;I)V

    .line 29
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 45
    const/high16 v4, 0x41200000  # 10.0f

    .line 47
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 57
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 60
    :cond_3b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 65
    move-result-object v0

    .line 66
    const v3, 0x7f0d00c3

    .line 69
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 75
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 78
    const v2, 0x7f0a024d

    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/ListView;

    .line 87
    new-instance v2, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;

    .line 89
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 91
    const v4, 0x7f0d00c2

    .line 94
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mItems:Ljava/util/List;

    .line 96
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;Landroid/content/Context;ILjava/util/List;)V

    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    new-instance v2, Lcom/android/fileexplorer/mirror/view/d;

    .line 104
    invoke-direct {v2, p0, v1}, Lcom/android/fileexplorer/mirror/view/d;-><init>(Ljava/lang/Object;I)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 112
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 114
    iget v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mElevation:I

    .line 116
    neg-int v3, v2

    .line 117
    neg-int v2, v2

    .line 118
    add-int/lit8 v2, v2, 0xa

    .line 120
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 123
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;

    .line 125
    if-eqz v0, :cond_81

    .line 127
    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;->onShow()V

    .line 130
    :cond_81
    return-void
.end method
