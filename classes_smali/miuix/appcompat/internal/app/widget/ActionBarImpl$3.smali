.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$3;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_22

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 11
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isOverflowMenuShowing()Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_22

    .line 21
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 23
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getPresenter()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 35
    :cond_22
    return-void
.end method
