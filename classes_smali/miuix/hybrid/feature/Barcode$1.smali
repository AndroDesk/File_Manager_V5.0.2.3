.class Lmiuix/hybrid/feature/Barcode$1;
.super Lmiuix/hybrid/LifecycleListener;
.source "Barcode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/hybrid/feature/Barcode;->invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/hybrid/feature/Barcode;

.field public final synthetic val$nativeInterface:Lmiuix/hybrid/NativeInterface;

.field public final synthetic val$request:Lmiuix/hybrid/Request;


# direct methods
.method public constructor <init>(Lmiuix/hybrid/feature/Barcode;Lmiuix/hybrid/NativeInterface;Lmiuix/hybrid/Request;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/feature/Barcode$1;->this$0:Lmiuix/hybrid/feature/Barcode;

    .line 3
    iput-object p2, p0, Lmiuix/hybrid/feature/Barcode$1;->val$nativeInterface:Lmiuix/hybrid/NativeInterface;

    .line 5
    iput-object p3, p0, Lmiuix/hybrid/feature/Barcode$1;->val$request:Lmiuix/hybrid/Request;

    .line 7
    invoke-direct {p0}, Lmiuix/hybrid/LifecycleListener;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-static {}, Lmiuix/hybrid/feature/Barcode;->access$000()I

    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_35

    .line 7
    iget-object p1, p0, Lmiuix/hybrid/feature/Barcode$1;->val$nativeInterface:Lmiuix/hybrid/NativeInterface;

    .line 9
    invoke-virtual {p1, p0}, Lmiuix/hybrid/NativeInterface;->removeLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    .line 12
    const/4 p1, -0x1

    .line 13
    if-ne p2, p1, :cond_1b

    .line 15
    new-instance p1, Lmiuix/hybrid/Response;

    .line 17
    const/4 p2, 0x0

    .line 18
    iget-object v0, p0, Lmiuix/hybrid/feature/Barcode$1;->this$0:Lmiuix/hybrid/feature/Barcode;

    .line 20
    invoke-static {v0, p3}, Lmiuix/hybrid/feature/Barcode;->access$100(Lmiuix/hybrid/feature/Barcode;Landroid/content/Intent;)Lorg/json/JSONObject;

    .line 23
    move-result-object p3

    .line 24
    invoke-direct {p1, p2, p3}, Lmiuix/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    .line 27
    goto :goto_2c

    .line 28
    :cond_1b
    if-nez p2, :cond_25

    .line 30
    new-instance p1, Lmiuix/hybrid/Response;

    .line 32
    const/16 p2, 0x64

    .line 34
    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    .line 37
    goto :goto_2c

    .line 38
    :cond_25
    new-instance p1, Lmiuix/hybrid/Response;

    .line 40
    const/16 p2, 0xc8

    .line 42
    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    .line 45
    :goto_2c
    iget-object p2, p0, Lmiuix/hybrid/feature/Barcode$1;->val$request:Lmiuix/hybrid/Request;

    .line 47
    invoke-virtual {p2}, Lmiuix/hybrid/Request;->getCallback()Lmiuix/hybrid/Callback;

    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2, p1}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    .line 54
    :cond_35
    return-void
.end method
