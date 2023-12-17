.class Lmiuix/appcompat/app/AppDelegate$1;
.super Lmiuix/responsive/page/manager/BaseResponseStateManager;
.source "AppDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/AppDelegate;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppDelegate;Lmiuix/responsive/interfaces/IResponsive;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate$1;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;-><init>(Lmiuix/responsive/interfaces/IResponsive;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$1;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    return-object v0
.end method
