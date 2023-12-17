.class public Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;
.super Ljava/lang/Object;
.source "DropDownSingleChoiceMenu.java"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

.field private mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

.field private mSelectedItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static synthetic access$000(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mListener:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->internalDismiss()V

    .line 4
    return-void
.end method

.method public static synthetic access$202(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    .line 3
    return p1
.end method

.method private internalDismiss()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 4
    return-void
.end method

.method private setAccessibilityDelegate(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$4;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$4;-><init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->dismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getSelectedItem()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    .line 3
    return v0
.end method

.method public onAnimationUpdate(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mListener:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;->onDismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method public onShow()V
    .registers 1

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    .line 3
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setAccessibilityDelegate(Landroid/view/View;)V

    .line 6
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
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-void
.end method

.method public setOnMenuListener(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mListener:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .line 3
    return-void
.end method

.method public setSelectedItem(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    .line 3
    return-void
.end method

.method public show()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_5b

    .line 5
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_5b

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 12
    if-nez v0, :cond_56

    .line 14
    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 16
    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v0, v1, v2, v3}, Lmiuix/popupwidget/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 25
    new-instance v1, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;

    .line 27
    invoke-direct {v1, p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;-><init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V

    .line 30
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setContainerController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)V

    .line 33
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 35
    invoke-virtual {v0, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setDropDownController(Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;)V

    .line 38
    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;

    .line 40
    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 42
    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    .line 45
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;->getListView()Landroid/widget/ListView;

    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;

    .line 51
    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    .line 53
    sget v3, Lmiuix/popupwidget/R$layout;->miuix_appcompat_select_dropdown_popup_singlechoice:I

    .line 55
    iget-object v4, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    .line 57
    invoke-direct {v1, p0, v2, v3, v4}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;-><init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;Landroid/content/Context;ILjava/util/List;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    new-instance v1, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;

    .line 65
    invoke-direct {v1, p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;-><init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 75
    iget v2, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 80
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 82
    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    .line 84
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    .line 87
    :cond_56
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 89
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->show()V

    .line 92
    :cond_5b
    :goto_5b
    return-void
.end method
