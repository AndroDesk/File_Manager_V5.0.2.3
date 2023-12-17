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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/controller/FabPreference;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->initPadPopupWindow()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/PadPopupMenuWindow;)Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mOnItemClickListener:Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;

    return-object p0
.end method

.method private getXoff()I
    .registers 2

    const v0, 0x7f0700f7

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getYoff()I
    .registers 2

    const v0, 0x7f070057

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method private initPadPopupWindow()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042c35

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const v1, 0x7f032fb0

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/PadFabExpandView;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/PadFabExpandView;->initData(Lcom/android/fileexplorer/view/PadFabExpandView$SavedInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/PadFabExpandView;->setData(Ljava/util/List;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v3, v2, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    aget-object v1, v1, v3

    iget-boolean v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/PadFabExpandView;->selectMethod(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V

    new-instance v1, Lcom/android/fileexplorer/view/PadPopupMenuWindow$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow$1;-><init>(Lcom/android/fileexplorer/view/PadPopupMenuWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/PadFabExpandView;->setOnItemClickListener(Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public setOnItemClickListener(Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->mOnItemClickListener:Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;

    return-void
.end method

.method public showPopupwindow(Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->getXoff()I

    move-result v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->getYoff()I

    move-result v1

    const v2, 0x800035

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiuix/internal/widget/ListPopup;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public updateAnchor(Landroid/view/View;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->getXoff()I

    move-result v2

    invoke-direct {p0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->getYoff()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method
