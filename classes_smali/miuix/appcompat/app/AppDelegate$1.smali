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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/AppDelegate;Lmiuix/responsive/interfaces/IResponsive;)V
    .registers 3

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate$1;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;-><init>(Lmiuix/responsive/interfaces/IResponsive;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$1;->this$0:Lmiuix/appcompat/app/AppDelegate;

    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object v0
.end method
