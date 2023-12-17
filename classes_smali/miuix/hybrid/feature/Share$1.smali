.class Lmiuix/hybrid/feature/Share$1;
.super Lmiuix/hybrid/LifecycleListener;
.source "Share.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/hybrid/feature/Share;->invokeShareTo(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/hybrid/feature/Share;

.field public final synthetic val$cb:Lmiuix/hybrid/Callback;

.field public final synthetic val$nativeInterface:Lmiuix/hybrid/NativeInterface;


# direct methods
.method public constructor <init>(Lmiuix/hybrid/feature/Share;Lmiuix/hybrid/NativeInterface;Lmiuix/hybrid/Callback;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/feature/Share$1;->this$0:Lmiuix/hybrid/feature/Share;

    .line 3
    iput-object p2, p0, Lmiuix/hybrid/feature/Share$1;->val$nativeInterface:Lmiuix/hybrid/NativeInterface;

    .line 5
    iput-object p3, p0, Lmiuix/hybrid/feature/Share$1;->val$cb:Lmiuix/hybrid/Callback;

    .line 7
    invoke-direct {p0}, Lmiuix/hybrid/LifecycleListener;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/hybrid/feature/Share$1;->val$nativeInterface:Lmiuix/hybrid/NativeInterface;

    .line 3
    invoke-virtual {p1, p0}, Lmiuix/hybrid/NativeInterface;->removeLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    .line 6
    const/4 p1, -0x1

    .line 7
    if-ne p2, p1, :cond_11

    .line 9
    new-instance p1, Lmiuix/hybrid/Response;

    .line 11
    const/4 p2, 0x0

    .line 12
    const-string p3, "success"

    .line 14
    invoke-direct {p1, p2, p3}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 17
    goto :goto_24

    .line 18
    :cond_11
    if-nez p2, :cond_1d

    .line 20
    new-instance p1, Lmiuix/hybrid/Response;

    .line 22
    const/16 p2, 0x64

    .line 24
    const-string p3, "cancel"

    .line 26
    invoke-direct {p1, p2, p3}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    new-instance p1, Lmiuix/hybrid/Response;

    .line 32
    const/16 p2, 0xc8

    .line 34
    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    .line 37
    :goto_24
    iget-object p2, p0, Lmiuix/hybrid/feature/Share$1;->val$cb:Lmiuix/hybrid/Callback;

    .line 39
    invoke-virtual {p2, p1}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    .line 42
    return-void
.end method
