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
.method public constructor <init>(Lmiuix/appcompat/app/AppDelegate;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 9
    invoke-virtual {v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isEndActionMenuEnabled()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_17

    .line 16
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 18
    invoke-static {v1}, Lmiuix/appcompat/app/AppDelegate;->access$100(Lmiuix/appcompat/app/AppDelegate;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_36

    .line 24
    :cond_17
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 26
    invoke-static {v1}, Lmiuix/appcompat/app/AppDelegate;->access$200(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/ActivityCallback;

    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-interface {v1, v3, v0}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_36

    .line 37
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 39
    invoke-static {v1}, Lmiuix/appcompat/app/AppDelegate;->access$200(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/ActivityCallback;

    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1, v3, v2, v0}, Lmiuix/appcompat/app/ActivityCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_36

    .line 49
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 51
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 54
    goto :goto_3b

    .line 55
    :cond_36
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$3;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 57
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 60
    :goto_3b
    return-void
.end method
