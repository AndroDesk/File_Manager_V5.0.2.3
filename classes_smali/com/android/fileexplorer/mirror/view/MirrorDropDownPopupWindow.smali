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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mContext:Landroid/content/Context;

    const v0, 0x7f0702d8

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mElevation:I

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->lambda$show$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mSelectedIndex:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->lambda$show$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private synthetic lambda$show$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;->onDismiss()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$show$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    iput p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mSelectedIndex:I

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;

    if-eqz p1, :cond_9

    invoke-interface {p1, p3}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;->onItemSelected(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mAnchorView:Landroid/view/View;

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

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mItems:Ljava/util/List;

    return-void
.end method

.method public setOnMenuListener(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;

    return-void
.end method

.method public setSelectedItem(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mSelectedIndex:I

    return-void
.end method

.method public show()V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mItems:Ljava/util/List;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3b

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/android/fileexplorer/mirror/view/c;

    invoke-direct {v3, p0, v1}, Lcom/android/fileexplorer/mirror/view/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/high16 v4, 0x41200000  # 10.0f

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :cond_3b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d00c3

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const v2, 0x7f032fdb

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mContext:Landroid/content/Context;

    const v4, 0x7f0d00c2

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mItems:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/fileexplorer/mirror/view/d;

    invoke-direct {v2, p0, v1}, Lcom/android/fileexplorer/mirror/view/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mAnchorView:Landroid/view/View;

    iget v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mElevation:I

    neg-int v3, v2

    neg-int v2, v2

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;

    if-eqz v0, :cond_85

    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;->onShow()V

    :cond_85
    return-void
.end method
