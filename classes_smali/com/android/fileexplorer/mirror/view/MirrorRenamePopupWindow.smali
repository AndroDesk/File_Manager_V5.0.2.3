.class public Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;
.super Ljava/lang/Object;
.source "MirrorRenamePopupWindow.java"


# instance fields
.field private mClickCancel:Z

.field private mContext:Landroid/content/Context;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRenameView:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->lambda$show$1()V

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->lambda$show$0()V

    return-void
.end method

.method private synthetic lambda$show$0()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mClickCancel:Z

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 6
    if-eqz v0, :cond_f

    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mRenameView:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->reset()V

    .line 16
    :cond_f
    return-void
.end method

.method private synthetic lambda$show$1()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mClickCancel:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mRenameView:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->onEnterClick()V

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mClickCancel:Z

    .line 15
    return-void
.end method


# virtual methods
.method public show(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->show(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;Z)V

    return-void
.end method

.method public show(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;Z)V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mRenameView:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    if-nez v0, :cond_17

    .line 3
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mRenameView:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    .line 4
    new-instance v1, Lcom/android/cloud/fragment/presenter/b;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setRenameCallback(Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;)V

    .line 5
    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    .line 6
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 7
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mRenameView:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 10
    :cond_3a
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz p3, :cond_53

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    neg-int p3, p3

    goto :goto_54

    :cond_53
    move p3, v1

    :goto_54
    invoke-virtual {v0, p1, v1, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 13
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->update()V

    .line 14
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/android/fileexplorer/mirror/view/c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/mirror/view/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 15
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->mRenameView:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileInfo(Lcom/android/fileexplorer/model/FileInfo;I)V

    return-void
.end method
