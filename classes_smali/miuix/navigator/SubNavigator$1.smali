.class Lmiuix/navigator/SubNavigator$1;
.super Lmiuix/appcompat/app/DelegateFragmentFactory;
.source "SubNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/SubNavigator;->onControllerAttach(Lmiuix/navigator/NavigatorFragmentController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/SubNavigator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/SubNavigator$1;->this$0:Lmiuix/navigator/SubNavigator;

    invoke-direct {p0}, Lmiuix/appcompat/app/DelegateFragmentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragmentDelegate(Landroidx/fragment/app/Fragment;)Lmiuix/appcompat/app/FragmentDelegate;
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/SubNavigator$1;->this$0:Lmiuix/navigator/SubNavigator;

    instance-of v1, v0, Lmiuix/navigator/ContentSubNavigator;

    if-eqz v1, :cond_c

    new-instance v1, Lmiuix/navigator/NavContentFragmentDelegate;

    invoke-direct {v1, v0, p1}, Lmiuix/navigator/NavContentFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    return-object v1

    :cond_c
    instance-of v1, v0, Lmiuix/navigator/SecondaryContentSubNavigator;

    if-eqz v1, :cond_16

    new-instance v1, Lmiuix/navigator/NavSecondaryContentFragmentDelegate;

    invoke-direct {v1, v0, p1}, Lmiuix/navigator/NavSecondaryContentFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    return-object v1

    :cond_16
    instance-of v1, v0, Lmiuix/navigator/NavigationSubNavigator;

    if-eqz v1, :cond_20

    new-instance v1, Lmiuix/navigator/NavigationFragmentDelegate;

    invoke-direct {v1, v0, p1}, Lmiuix/navigator/NavigationFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    return-object v1

    :cond_20
    new-instance v1, Lmiuix/navigator/NavigatorFragmentDelegate;

    invoke-direct {v1, v0, p1}, Lmiuix/navigator/NavigatorFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    return-object v1
.end method
