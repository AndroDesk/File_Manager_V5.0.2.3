.class public final synthetic Lmiuix/internal/widget/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lmiuix/internal/widget/PopupMenuWindow;

.field public final synthetic b:Landroid/view/SubMenu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/internal/widget/PopupMenuWindow;Landroid/view/SubMenu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/b;->a:Lmiuix/internal/widget/PopupMenuWindow;

    iput-object p2, p0, Lmiuix/internal/widget/b;->b:Landroid/view/SubMenu;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/widget/b;->a:Lmiuix/internal/widget/PopupMenuWindow;

    iget-object v1, p0, Lmiuix/internal/widget/b;->b:Landroid/view/SubMenu;

    invoke-static {v0, v1}, Lmiuix/internal/widget/PopupMenuWindow;->d(Lmiuix/internal/widget/PopupMenuWindow;Landroid/view/SubMenu;)V

    return-void
.end method
