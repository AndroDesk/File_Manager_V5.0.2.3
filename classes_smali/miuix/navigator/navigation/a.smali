.class public final synthetic Lmiuix/navigator/navigation/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/navigator/navigation/NavigationBarItemView;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lmiuix/navigator/navigation/NavigationBarItemView;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/navigation/a;->a:Lmiuix/navigator/navigation/NavigationBarItemView;

    iput-boolean p2, p0, Lmiuix/navigator/navigation/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/a;->a:Lmiuix/navigator/navigation/NavigationBarItemView;

    iget-boolean v1, p0, Lmiuix/navigator/navigation/a;->b:Z

    invoke-static {v0, v1}, Lmiuix/navigator/navigation/NavigationBarItemView;->a(Lmiuix/navigator/navigation/NavigationBarItemView;Z)V

    return-void
.end method
