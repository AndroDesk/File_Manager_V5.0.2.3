.class public final synthetic Lmiuix/navigator/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll0/a;


# instance fields
.field public final synthetic a:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/i;->a:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    iput-boolean p2, p0, Lmiuix/navigator/i;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/i;->a:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    iget-boolean v1, p0, Lmiuix/navigator/i;->b:Z

    check-cast p1, Lmiuix/navigator/SwitchInfo;

    invoke-static {v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->a(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;ZLmiuix/navigator/SwitchInfo;)V

    return-void
.end method
