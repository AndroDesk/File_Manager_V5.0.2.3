.class Lmiuix/navigator/app/MiuixNavigatorImpl$1;
.super Ljava/lang/Object;
.source "MiuixNavigatorImpl.java"

# interfaces
.implements Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/app/MiuixNavigatorImpl;->setTabSelectListener(Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/app/MiuixNavigatorImpl;

.field public final synthetic val$listener:Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Lmiuix/navigator/app/MiuixNavigatorImpl;Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl$1;->this$0:Lmiuix/navigator/app/MiuixNavigatorImpl;

    .line 3
    iput-object p2, p0, Lmiuix/navigator/app/MiuixNavigatorImpl$1;->val$listener:Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    const/4 v1, -0x1

    .line 8
    const-string v2, "miuix.miracle:bottomTabId"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl$1;->val$listener:Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;

    .line 16
    iget-object v2, p0, Lmiuix/navigator/app/MiuixNavigatorImpl$1;->this$0:Lmiuix/navigator/app/MiuixNavigatorImpl;

    .line 18
    invoke-virtual {v2, v0}, Lmiuix/navigator/NavigatorImpl;->findTab(I)Lmiuix/navigator/BottomTab;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lmiuix/navigator/BottomTab;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v1, p1, v0}, Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Z

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    return p1
.end method
