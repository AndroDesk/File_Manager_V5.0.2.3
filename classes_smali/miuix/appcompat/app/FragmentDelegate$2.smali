.class Lmiuix/appcompat/app/FragmentDelegate$2;
.super Lmiuix/responsive/page/manager/BaseResponseStateManager;
.source "FragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/FragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/FragmentDelegate;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/responsive/interfaces/IResponsive;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate$2;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;-><init>(Lmiuix/responsive/interfaces/IResponsive;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$2;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
