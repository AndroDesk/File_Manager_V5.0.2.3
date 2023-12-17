.class Lmiuix/navigator/navigation/NavigationView$1;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Lmiuix/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/navigation/NavigationView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/navigation/NavigationView;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationView$1;->this$0:Lmiuix/navigator/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lmiuix/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationView$1;->this$0:Lmiuix/navigator/navigation/NavigationView;

    iget-object p1, p1, Lmiuix/navigator/navigation/NavigationView;->listener:Lmiuix/navigator/navigation/NavigationView$OnNavigationItemSelectedListener;

    if-eqz p1, :cond_e

    invoke-interface {p1, p2}, Lmiuix/navigator/navigation/NavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public onMenuModeChange(Lmiuix/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method
