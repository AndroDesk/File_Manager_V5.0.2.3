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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/hybrid/feature/Share;Lmiuix/hybrid/NativeInterface;Lmiuix/hybrid/Callback;)V
    .registers 4

    iput-object p1, p0, Lmiuix/hybrid/feature/Share$1;->this$0:Lmiuix/hybrid/feature/Share;

    iput-object p2, p0, Lmiuix/hybrid/feature/Share$1;->val$nativeInterface:Lmiuix/hybrid/NativeInterface;

    iput-object p3, p0, Lmiuix/hybrid/feature/Share$1;->val$cb:Lmiuix/hybrid/Callback;

    invoke-direct {p0}, Lmiuix/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    iget-object p1, p0, Lmiuix/hybrid/feature/Share$1;->val$nativeInterface:Lmiuix/hybrid/NativeInterface;

    invoke-virtual {p1, p0}, Lmiuix/hybrid/NativeInterface;->removeLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_11

    new-instance p1, Lmiuix/hybrid/Response;

    const/4 p2, 0x0

    const-string p3, "success"

    invoke-direct {p1, p2, p3}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_24

    :cond_11
    if-nez p2, :cond_1d

    new-instance p1, Lmiuix/hybrid/Response;

    const/16 p2, 0x64

    const-string p3, "cancel"

    invoke-direct {p1, p2, p3}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_24

    :cond_1d
    new-instance p1, Lmiuix/hybrid/Response;

    const/16 p2, 0xc8

    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    :goto_24
    iget-object p2, p0, Lmiuix/hybrid/feature/Share$1;->val$cb:Lmiuix/hybrid/Callback;

    invoke-virtual {p2, p1}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    return-void
.end method
