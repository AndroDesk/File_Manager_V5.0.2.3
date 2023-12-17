.class public Lmiuix/appcompat/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;,
        Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

.field private mOnDismissListener:Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

.field private mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_1f

    const/4 p3, 0x0

    .line 3
    sget-object v0, Lmiuix/appcompat/R$styleable;->miuiPopupMenu:[I

    sget v1, Lmiuix/appcompat/R$attr;->miuiPopupMenuStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 4
    :try_start_f
    sget v0, Lmiuix/appcompat/R$styleable;->miuiPopupMenu_miuiPopupTheme:I

    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1a

    .line 5
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    move p3, v0

    goto :goto_1f

    :catchall_1a
    move-exception p1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    throw p1

    :cond_1f
    :goto_1f
    if-eqz p3, :cond_29

    .line 7
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    goto :goto_2b

    .line 8
    :cond_29
    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 9
    :goto_2b
    iput-object p2, p0, Lmiuix/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 10
    new-instance p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object p2, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    new-instance p1, Lmiuix/appcompat/widget/PopupMenu$1;

    iget-object p2, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lmiuix/appcompat/widget/PopupMenu$1;-><init>(Lmiuix/appcompat/widget/PopupMenu;Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenuItemClickListener:Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mOnDismissListener:Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

    .line 3
    return-object p0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    new-instance v0, Lm/f;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Lm/f;-><init>(Landroid/content/Context;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 6
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-object v0
.end method

.method public inflate(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 10
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public setOnDismissListener(Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mOnDismissListener:Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

    .line 3
    return-void
.end method

.method public setOnMenuItemClickListener(Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenuItemClickListener:Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 3
    return-void
.end method

.method public show()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/PopupMenuWindow;->update(Landroid/view/Menu;)V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lmiuix/internal/widget/PopupMenuWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 16
    return-void
.end method

.method public showAsDropDown(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/PopupMenuWindow;->update(Landroid/view/Menu;)V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    .line 15
    invoke-virtual {p1, p2}, Lmiuix/internal/widget/ListPopup;->setVerticalOffset(I)V

    .line 18
    iget-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    .line 20
    iget-object p2, p0, Lmiuix/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, p2, v0}, Lmiuix/internal/widget/PopupMenuWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 26
    return-void
.end method
