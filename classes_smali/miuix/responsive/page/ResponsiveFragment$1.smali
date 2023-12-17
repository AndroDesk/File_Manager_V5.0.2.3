.class Lmiuix/responsive/page/ResponsiveFragment$1;
.super Lmiuix/responsive/page/manager/BaseResponseStateManager;
.source "ResponsiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/responsive/page/ResponsiveFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/responsive/page/ResponsiveFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/responsive/page/ResponsiveFragment;Lmiuix/responsive/interfaces/IResponsive;)V
    .registers 3

    iput-object p1, p0, Lmiuix/responsive/page/ResponsiveFragment$1;->this$0:Lmiuix/responsive/page/ResponsiveFragment;

    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;-><init>(Lmiuix/responsive/interfaces/IResponsive;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveFragment$1;->this$0:Lmiuix/responsive/page/ResponsiveFragment;

    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
