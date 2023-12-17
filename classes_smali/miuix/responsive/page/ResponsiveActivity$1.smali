.class Lmiuix/responsive/page/ResponsiveActivity$1;
.super Lmiuix/responsive/page/manager/BaseResponseStateManager;
.source "ResponsiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/responsive/page/ResponsiveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/responsive/page/ResponsiveActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/responsive/page/ResponsiveActivity;Lmiuix/responsive/interfaces/IResponsive;)V
    .registers 3

    iput-object p1, p0, Lmiuix/responsive/page/ResponsiveActivity$1;->this$0:Lmiuix/responsive/page/ResponsiveActivity;

    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;-><init>(Lmiuix/responsive/interfaces/IResponsive;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveActivity$1;->this$0:Lmiuix/responsive/page/ResponsiveActivity;

    return-object v0
.end method
