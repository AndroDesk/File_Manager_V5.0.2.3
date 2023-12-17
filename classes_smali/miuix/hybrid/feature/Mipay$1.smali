.class Lmiuix/hybrid/feature/Mipay$1;
.super Lmiuix/hybrid/LifecycleListener;
.source "Mipay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/hybrid/feature/Mipay;->invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/hybrid/feature/Mipay;

.field public final synthetic val$nativeInterface:Lmiuix/hybrid/NativeInterface;

.field public final synthetic val$request:Lmiuix/hybrid/Request;


# direct methods
.method public constructor <init>(Lmiuix/hybrid/feature/Mipay;Lmiuix/hybrid/NativeInterface;Lmiuix/hybrid/Request;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/feature/Mipay$1;->this$0:Lmiuix/hybrid/feature/Mipay;

    .line 3
    iput-object p2, p0, Lmiuix/hybrid/feature/Mipay$1;->val$nativeInterface:Lmiuix/hybrid/NativeInterface;

    .line 5
    iput-object p3, p0, Lmiuix/hybrid/feature/Mipay$1;->val$request:Lmiuix/hybrid/Request;

    .line 7
    invoke-direct {p0}, Lmiuix/hybrid/LifecycleListener;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    const v0, 0x1335188

    .line 4
    if-ne p1, v0, :cond_3a

    .line 6
    iget-object p1, p0, Lmiuix/hybrid/feature/Mipay$1;->val$nativeInterface:Lmiuix/hybrid/NativeInterface;

    .line 8
    invoke-virtual {p1, p0}, Lmiuix/hybrid/NativeInterface;->removeLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    .line 11
    const/4 p1, -0x1

    .line 12
    if-ne p2, p1, :cond_1a

    .line 14
    new-instance p1, Lmiuix/hybrid/Response;

    .line 16
    const/4 p2, 0x0

    .line 17
    iget-object v0, p0, Lmiuix/hybrid/feature/Mipay$1;->this$0:Lmiuix/hybrid/feature/Mipay;

    .line 19
    invoke-static {v0, p3}, Lmiuix/hybrid/feature/Mipay;->access$000(Lmiuix/hybrid/feature/Mipay;Landroid/content/Intent;)Lorg/json/JSONObject;

    .line 22
    move-result-object p3

    .line 23
    invoke-direct {p1, p2, p3}, Lmiuix/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    .line 26
    goto :goto_31

    .line 27
    :cond_1a
    if-nez p2, :cond_2a

    .line 29
    new-instance p1, Lmiuix/hybrid/Response;

    .line 31
    const/16 p2, 0x64

    .line 33
    iget-object v0, p0, Lmiuix/hybrid/feature/Mipay$1;->this$0:Lmiuix/hybrid/feature/Mipay;

    .line 35
    invoke-static {v0, p3}, Lmiuix/hybrid/feature/Mipay;->access$000(Lmiuix/hybrid/feature/Mipay;Landroid/content/Intent;)Lorg/json/JSONObject;

    .line 38
    move-result-object p3

    .line 39
    invoke-direct {p1, p2, p3}, Lmiuix/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    .line 42
    goto :goto_31

    .line 43
    :cond_2a
    new-instance p1, Lmiuix/hybrid/Response;

    .line 45
    const/16 p2, 0xc8

    .line 47
    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    .line 50
    :goto_31
    iget-object p2, p0, Lmiuix/hybrid/feature/Mipay$1;->val$request:Lmiuix/hybrid/Request;

    .line 52
    invoke-virtual {p2}, Lmiuix/hybrid/Request;->getCallback()Lmiuix/hybrid/Callback;

    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2, p1}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    .line 59
    :cond_3a
    return-void
.end method
