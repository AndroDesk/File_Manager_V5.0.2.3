.class public final synthetic Lmiuix/appcompat/internal/view/menu/action/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/b;->a:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/b;->a:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->b(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
