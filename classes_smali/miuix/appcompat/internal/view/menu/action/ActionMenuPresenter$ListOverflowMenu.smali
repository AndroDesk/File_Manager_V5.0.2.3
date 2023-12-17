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
.method private constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    return-void
.end method

.method private getListMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 3
    if-nez v0, :cond_1d

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 9
    invoke-static {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$200(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 15
    invoke-static {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$300(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)I

    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 21
    invoke-static {v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$400(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)I

    .line 24
    move-result v3

    .line 25
    invoke-direct {v0, v1, v2, v3}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 28
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 32
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 35
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 37
    return-object p1
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1100(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 6
    move-result-object p1

    .line 7
    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 9
    if-eqz p1, :cond_1b

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 13
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1200(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 21
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$700(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->hideOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z

    .line 28
    :cond_1b
    return-void
.end method

.method public getOverflowMenuView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Landroid/view/View;
    .registers 3

    .line 1
    if-eqz p1, :cond_1f

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1f

    .line 13
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->getListMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 19
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$500(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/ViewGroup;

    .line 25
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/view/View;

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    :goto_20
    return-object p1
.end method

.method public isShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$900(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 9
    if-eqz v0, :cond_17

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 13
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1000(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 19
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isOverflowMenuShowing()Z

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public tryShow()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$600(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 9
    if-eqz v0, :cond_1d

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 13
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$800(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 21
    invoke-static {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$700(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->showOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z

    .line 28
    move-result v0

    .line 29
    return v0

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    return v0
.end method

.method public update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1300(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 9
    if-eqz v0, :cond_19

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 13
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1400(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 19
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->getOverflowMenuView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setOverflowMenuView(Landroid/view/View;)V

    .line 26
    :cond_19
    return-void
.end method
