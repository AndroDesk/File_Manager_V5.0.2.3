.class Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListOverflowMenu"
.end annotation


# instance fields
.field private mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    return-void
.end method

.method private getListMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;
    .registers 6

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    if-nez v0, :cond_1d

    new-instance v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$200(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$300(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$400(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    :cond_1d
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    return-object p1
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 3

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1100(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1200(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$700(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->hideOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z

    :cond_1b
    return-void
.end method

.method public getOverflowMenuView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Landroid/view/View;
    .registers 3

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->getListMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$500(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return-object p1
.end method

.method public isShowing()Z
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$900(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1000(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public tryShow()Z
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$600(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$800(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$700(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->showOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z

    move-result v0

    return v0

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1300(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1400(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->getOverflowMenuView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setOverflowMenuView(Landroid/view/View;)V

    :cond_19
    return-void
.end method
