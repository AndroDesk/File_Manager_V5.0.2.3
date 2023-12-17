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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/navigation/NavigationBarView;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lmiuix/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    invoke-static {p1}, Lmiuix/navigator/navigation/NavigationBarView;->access$000(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    invoke-virtual {v1}, Lmiuix/navigator/navigation/NavigationBarView;->getSelectedItemId()I

    move-result v1

    if-ne p1, v1, :cond_1f

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    invoke-static {p1}, Lmiuix/navigator/navigation/NavigationBarView;->access$000(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lmiuix/navigator/navigation/NavigationBarView$OnItemReselectedListener;->onNavigationItemReselected(Landroid/view/MenuItem;)V

    return v0

    :cond_1f
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    invoke-static {p1}, Lmiuix/navigator/navigation/NavigationBarView;->access$100(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    invoke-static {p1}, Lmiuix/navigator/navigation/NavigationBarView;->access$100(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0
.end method

.method public onMenuModeChange(Lmiuix/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method
