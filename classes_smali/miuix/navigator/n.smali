.class public final synthetic Lmiuix/navigator/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;


# instance fields
.field public final synthetic a:Lmiuix/navigator/SubNavigator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/n;->a:Lmiuix/navigator/SubNavigator;

    return-void
.end method


# virtual methods
.method public final onAttach(Lmiuix/navigator/NavigatorFragmentController;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/n;->a:Lmiuix/navigator/SubNavigator;

    invoke-virtual {v0, p1}, Lmiuix/navigator/SubNavigator;->onControllerAttach(Lmiuix/navigator/NavigatorFragmentController;)V

    return-void
.end method
