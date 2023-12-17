.class public final synthetic Lmiuix/appcompat/app/floatingactivity/helper/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/c;->a:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    iput p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/c;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/c;->a:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    iget v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/c;->b:F

    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->d(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;F)V

    return-void
.end method
