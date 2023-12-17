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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/app/MiuixNavigatorImpl;Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl$1;->this$0:Lmiuix/navigator/app/MiuixNavigatorImpl;

    iput-object p2, p0, Lmiuix/navigator/app/MiuixNavigatorImpl$1;->val$listener:Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v1, -0x1

    const-string v2, "miuix.miracle:bottomTabId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl$1;->val$listener:Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;

    iget-object v2, p0, Lmiuix/navigator/app/MiuixNavigatorImpl$1;->this$0:Lmiuix/navigator/app/MiuixNavigatorImpl;

    invoke-virtual {v2, v0}, Lmiuix/navigator/NavigatorImpl;->findTab(I)Lmiuix/navigator/BottomTab;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/BottomTab;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Z

    move-result p1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method
