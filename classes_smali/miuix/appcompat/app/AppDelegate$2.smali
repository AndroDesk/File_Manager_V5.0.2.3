.class Lmiuix/appcompat/app/AppDelegate$2;
.super Landroidx/activity/h;
.source "AppDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AppDelegate;->installToDecor(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/AppDelegate;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppDelegate;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate$2;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-direct {p0, p2}, Landroidx/activity/h;-><init>(Z)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$2;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/AppDelegate;->access$000(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->onBackPressed()V

    .line 10
    return-void
.end method
