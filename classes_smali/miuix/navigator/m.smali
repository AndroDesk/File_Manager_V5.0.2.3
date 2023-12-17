.class public final synthetic Lmiuix/navigator/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$m;


# instance fields
.field public final synthetic a:Lmiuix/navigator/SecondaryContentSubNavigator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigator/SecondaryContentSubNavigator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/m;->a:Lmiuix/navigator/SecondaryContentSubNavigator;

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/m;->a:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-static {v0}, Lmiuix/navigator/SecondaryContentSubNavigator;->a(Lmiuix/navigator/SecondaryContentSubNavigator;)V

    return-void
.end method
