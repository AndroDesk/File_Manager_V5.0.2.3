.class Lmiuix/internal/webkit/DefaultDeviceAccountLogin$1;
.super Landroid/os/Handler;
.source "DefaultDeviceAccountLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/webkit/DefaultDeviceAccountLogin;-><init>(Landroid/app/Activity;Lmiuix/internal/hybrid/provider/AbsWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/webkit/DefaultDeviceAccountLogin;


# direct methods
.method public constructor <init>(Lmiuix/internal/webkit/DefaultDeviceAccountLogin;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lmiuix/internal/webkit/DefaultDeviceAccountLogin;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    if-nez p1, :cond_a

    .line 5
    iget-object p1, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lmiuix/internal/webkit/DefaultDeviceAccountLogin;

    .line 7
    invoke-static {p1}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->access$000(Lmiuix/internal/webkit/DefaultDeviceAccountLogin;)V

    .line 10
    goto :goto_1c

    .line 11
    :cond_a
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_1c

    .line 14
    iget-object p1, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lmiuix/internal/webkit/DefaultDeviceAccountLogin;

    .line 16
    invoke-static {p1}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->access$100(Lmiuix/internal/webkit/DefaultDeviceAccountLogin;)V

    .line 19
    iget-object p1, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lmiuix/internal/webkit/DefaultDeviceAccountLogin;

    .line 21
    invoke-static {p1}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->access$200(Lmiuix/internal/webkit/DefaultDeviceAccountLogin;)Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method
