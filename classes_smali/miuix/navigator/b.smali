.class public final synthetic Lmiuix/navigator/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final synthetic a:Lmiuix/navigator/ContentSubNavigator;


# direct methods
.method public synthetic constructor <init>(Lmiuix/navigator/ContentSubNavigator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/b;->a:Lmiuix/navigator/ContentSubNavigator;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/b;->a:Lmiuix/navigator/ContentSubNavigator;

    invoke-static {v0, p1, p2}, Lmiuix/navigator/ContentSubNavigator;->b(Lmiuix/navigator/ContentSubNavigator;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
