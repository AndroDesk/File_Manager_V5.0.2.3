.class public Lcom/android/fileexplorer/view/PadPopupMenuWindow;
.super Lmiuix/internal/widget/PopupMenuWindow;
.source "PadPopupMenuWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

.field private mOnItemClickListener:Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/controller/FabPreference;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->initPadPopupWindow()V

    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/PadPopupMenuWindow;)Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mOnItemClickListener:Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;

    .line 3
    return-object p0
.end method

.method private getXoff()I
    .registers 2

    .line 1
    const v0, 0x7f0700f7

    .line 4
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method private getYoff()I
    .registers 2

    .line 1
    const v0, 0x7f070057

    .line 4
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 7
    move-result v0

    .line 8
    neg-int v0, v0

    .line 9
    return v0
.end method

.method private initPadPopupWindow()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mContext:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f0d01a3

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 21
    const/4 v1, -0x2

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 28
    const v1, 0x7f0a0226

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/fileexplorer/view/PadFabExpandView;

    .line 37
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/PadFabExpandView;->initData(Lcom/android/fileexplorer/view/PadFabExpandView$SavedInfo;)Ljava/util/List;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/PadFabExpandView;->setData(Ljava/util/List;)V

    .line 44
    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 50
    iget v3, v2, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 52
    aget-object v1, v1, v3

    .line 54
    iget-boolean v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/PadFabExpandView;->selectMethod(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V

    .line 59
    new-instance v1, Lcom/android/fileexplorer/view/PadPopupMenuWindow$1;

    .line 61
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow$1;-><init>(Lcom/android/fileexplorer/view/PadPopupMenuWindow;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/PadFabExpandView;->setOnItemClickListener(Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;)V

    .line 67
    return-void
.end method


# virtual methods
.method public setOnItemClickListener(Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mOnItemClickListener:Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;

    .line 3
    return-void
.end method

.method public showPopupwindow(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->getXoff()I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->getYoff()I

    .line 8
    move-result v1

    .line 9
    const v2, 0x800035

    .line 12
    invoke-virtual {p0, p1, v0, v1, v2}, Lmiuix/internal/widget/ListPopup;->showAsDropDown(Landroid/view/View;III)V

    .line 15
    return-void
.end method

.method public updateAnchor(Landroid/view/View;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->getXoff()I

    .line 4
    move-result v2

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->getYoff()I

    .line 8
    move-result v3

    .line 9
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 12
    move-result v4

    .line 13
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 16
    move-result v5

    .line 17
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 22
    return-void
.end method
