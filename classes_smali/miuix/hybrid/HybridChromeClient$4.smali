.class Lmiuix/hybrid/HybridChromeClient$4;
.super Ljava/lang/Object;
.source "HybridChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/hybrid/HybridChromeClient;->onJsConfirm(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/hybrid/HybridChromeClient;

.field public final synthetic val$result:Lmiuix/hybrid/JsResult;


# direct methods
.method public constructor <init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/HybridChromeClient$4;->this$0:Lmiuix/hybrid/HybridChromeClient;

    .line 3
    iput-object p2, p0, Lmiuix/hybrid/HybridChromeClient$4;->val$result:Lmiuix/hybrid/JsResult;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    const/4 p1, 0x4

    .line 2
    if-ne p2, p1, :cond_a

    .line 4
    iget-object p1, p0, Lmiuix/hybrid/HybridChromeClient$4;->val$result:Lmiuix/hybrid/JsResult;

    .line 6
    invoke-virtual {p1}, Lmiuix/hybrid/JsResult;->confirm()V

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    const/4 p1, 0x1

    .line 12
    return p1
.end method
