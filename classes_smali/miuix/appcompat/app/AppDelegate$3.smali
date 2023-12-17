.class Lmiuix/appcompat/app/AppDelegate$3;
.super Ljava/lang/Object;
.source "AppDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AppDelegate;
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

.method public constructor <init>(Lmiuix/appcompat/app/AppDelegate;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isEndActionMenuEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-static {v1}, Lmiuix/appcompat/app/AppDelegate;->access$100(Lmiuix/appcompat/app/AppDelegate;)Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_17
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-static {v1}, Lmiuix/appcompat/app/AppDelegate;->access$200(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/ActivityCallback;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-static {v1}, Lmiuix/appcompat/app/AppDelegate;->access$200(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/ActivityCallback;

    move-result-object v1

    invoke-interface {v1, v3, v2, v0}, Lmiuix/appcompat/app/ActivityCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    goto :goto_3b

    :cond_36
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :goto_3b
    return-void
.end method
