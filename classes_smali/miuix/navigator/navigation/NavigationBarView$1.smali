.class Lmiuix/navigator/navigation/NavigationBarView$1;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Lmiuix/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/navigation/NavigationBarView;


# direct methods
.method public constructor <init>(Lmiuix/navigator/navigation/NavigationBarView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lmiuix/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    .line 3
    invoke-static {p1}, Lmiuix/navigator/navigation/NavigationBarView;->access$000(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_1f

    .line 10
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 13
    move-result p1

    .line 14
    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    .line 16
    invoke-virtual {v1}, Lmiuix/navigator/navigation/NavigationBarView;->getSelectedItemId()I

    .line 19
    move-result v1

    .line 20
    if-ne p1, v1, :cond_1f

    .line 22
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    .line 24
    invoke-static {p1}, Lmiuix/navigator/navigation/NavigationBarView;->access$000(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;

    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1, p2}, Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;->onNavigationItemReselected(Landroid/view/MenuItem;)V

    .line 31
    return v0

    .line 32
    :cond_1f
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    .line 34
    invoke-static {p1}, Lmiuix/navigator/navigation/NavigationBarView;->access$100(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_34

    .line 40
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    .line 42
    invoke-static {p1}, Lmiuix/navigator/navigation/NavigationBarView;->access$100(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1, p2}, Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_34

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    const/4 v0, 0x0

    .line 54
    :goto_35
    return v0
.end method

.method public onMenuModeChange(Lmiuix/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method
